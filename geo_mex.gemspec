# frozen_string_literal: true

require_relative 'lib/geo_mex/version'

Gem::Specification.new do |spec|
  spec.name          = 'geo_mex'
  spec.version       = GeoMex::VERSION
  spec.authors       = ['Gerardo Galindez']
  spec.email         = ['ggalindezb@gmail.com']

  spec.summary       = 'Postal information for Mexican political divisions'
  spec.description   = 'Postal information for Mexican political divisions'
  spec.homepage      = 'https://github.com/ggalindezb/geo_mex'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.5.0')

  spec.metadata['allowed_push_host'] = 'http://mygemserver.com'
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/ggalindezb/geo_mex'
  spec.metadata['changelog_uri'] = 'https://github.com/ggalindezb/geo_mex/CHANGELOG.md'

  spec.add_runtime_dependency 'mini_cache', '~> 1.1'
  spec.add_runtime_dependency 'sqlite3', '~> 1.4', '>= 1.4.2'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
