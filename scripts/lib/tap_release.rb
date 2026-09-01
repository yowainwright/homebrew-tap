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
    pattern = /^### #{Regexp.escape(command)}\n.*?(?=^### |#{Regexp.escape(README_END)})/m
    block.match(pattern)&.to_s
  end
end
