# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'absence/version'

Gem::Specification.new do |spec|
  spec.name          = 'absence.io'
  spec.version       = Absence::VERSION
  spec.authors       = ['Juan Carlos Alonso Holmstron']
  spec.email         = ['j.carlos.alonso.h@outlook.cl']

  spec.summary       = ''
  spec.description   = ''
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.40.0'
  spec.add_development_dependency 'guard-rspec', '~> 4.7', '>= 4.7.2'
  spec.add_development_dependency 'yard', '~> 0.9.5'

  spec.add_runtime_dependency 'hawk-auth', '~> 0.2.5'
  spec.add_runtime_dependency 'rest-client', '~> 1.8'
  spec.add_runtime_dependency 'http', '~> 2.0', '>= 2.0.2'
end
