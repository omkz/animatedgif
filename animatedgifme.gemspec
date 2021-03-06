# frozen_string_literal: true

require_relative 'lib/animatedgifme/version'

Gem::Specification.new do |spec|
  spec.name          = 'animatedgifme'
  spec.version       = Animatedgifme::VERSION
  spec.authors       = ['Kurnia Muhamad']
  spec.email         = ['omenkzz@gmail.com']

  spec.summary       = 'A ruby gem for http://animatedgif.me'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/omkz/animatedgif'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.4.0')

  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'webmock'
  spec.add_dependency 'faraday'
  spec.add_dependency 'json'
end
