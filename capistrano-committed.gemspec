# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/committed/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-committed"
  spec.version       = Capistrano::Committed::VERSION
  spec.authors       = ["Sam Bauers"]
  spec.email         = ["sam@redant.com.au"]

  spec.summary       = %q{Get a full release log with git commit history in Capistrano.}
  spec.description   = %q{Get a full release log with git commit history in Capistrano.}
  spec.homepage      = "https://github.com/sambauers/capistrano-committed"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "capistrano", '~> 3.4'
  spec.add_dependency "github_api", "~> 0.12"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.4"
end
