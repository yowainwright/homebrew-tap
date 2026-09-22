# frozen_string_literal: true

require "json"

module TapRelease
  ROOT = File.expand_path("../..", __dir__)
  README_START = "<!-- formulas:start -->"
  README_END = "<!-- formulas:end -->"
  README_PATTERN = /#{Regexp.escape(README_START)}.*?#{Regexp.escape(README_END)}/m
  TARGETS = %w[
    darwin-arm64
    darwin-amd64
    linux-arm64
    linux-amd64
  ].freeze
  REQUIRED_BREW_FIELDS = %w[
    name
    class_name
    command
    repo
    desc
    homepage
    license
    version
    asset_prefix
    managed
  ].freeze

  def self.targets(data)
    platforms = data.fetch("platforms", %w[darwin linux])
    valid = platforms.is_a?(Array) && !platforms.empty? && (platforms - %w[darwin linux]).empty?
    raise ArgumentError, "platforms must contain darwin and/or linux" unless valid

    TARGETS.select { |target| platforms.include?(target.split("-").first) }
  end

  def self.asset_name(data, version, target)
    os, arch = target.split("-")
    suffix = data.fetch("archive", false) ? ".tar.gz" : ""
    template = data.fetch("asset_template", "#{data.fetch("asset_prefix")}-%{target}#{suffix}")
    name = template % { version: version, target: target, os: os, arch: arch }
    raise ArgumentError, "invalid asset filename: #{name}" unless name.match?(/\A[0-9A-Za-z][0-9A-Za-z._+-]*\z/)

    name
  end

  def self.release_data(data, version)
    updated = data.merge("version" => version)
    updated.delete("revision") if data.fetch("version") != version
    updated
  end

  def self.brew_path(name)
    File.join(ROOT, "brews", "#{name}.json")
  end

  def self.brew_files
    Dir[File.join(ROOT, "brews", "*.json")].sort
  end

  def self.read_brew(path)
    JSON.parse(File.read(path))
  end

  def self.readme_brews
    brew_files.filter_map do |path|
      data = read_brew(path)
      next unless data.fetch("readme", false)

      data
    end.sort_by { |data| data.fetch("command") }
  end

  def self.readme_block(readme)
    return nil unless readme.scan(README_START).count == 1
    return nil unless readme.scan(README_END).count == 1

    readme.match(README_PATTERN)&.to_s
  end

  def self.readme_section(block, command)
    command_pattern = Regexp.escape(command)
    heading = /### (?:#{command_pattern}|\[#{command_pattern}\]\([^)]+\))/
    pattern = /^#{heading}\n.*?(?=^### |#{Regexp.escape(README_END)})/m
    block.match(pattern)&.to_s
  end
end
