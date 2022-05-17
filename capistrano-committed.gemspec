lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/committed/version'

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-committed'
  spec.version       = Capistrano::Committed::VERSION
  spec.authors       = ['Sam Bauers']
  spec.email         = ['sam@wopr.com.au']
  spec.license       = 'MIT'

  spec.summary       = 'Tells you what Capistrano 3 is going to deploy based on GitHub commits since the last release.'
  spec.description   = 'Tells you what Capistrano 3 is going to deploy based on GitHub commits since the last release. See README.md for more info.'
  spec.homepage      = 'https://github.com/sambauers/capistrano-committed'

  spec.files         = Dir['lib/**/*', 'capistrano-committed.gemspec', 'Gemfile', '*.md']
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 3.1.1'

  spec.add_dependency 'capistrano', '~> 3'
  spec.add_dependency 'github_api', '~> 0.19'
  spec.add_dependency 'mustache', '~> 1'
  spec.add_dependency 'rack', '~> 2'

  spec.add_development_dependency 'bundler', '~> 2'
  spec.add_development_dependency 'rake', '~> 12'
  spec.add_development_dependency 'rspec', '~> 3'
end
