lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mars_rover/version'

Gem::Specification.new do |spec|
  spec.name          = 'mars_rover'
  spec.version       = MarsRover::VERSION
  spec.authors       = ['Dmitriy Ushkov']
  spec.email         = ['ohuzhetotdima@gmail.com']
  spec.summary       = %q{Mars Rover movement controller for NASA}
  spec.description   = %q{Small application to control movement of NASA rovers}
  spec.files         = `git ls-files`.split($\)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.metadata['allowed_push_host'] = '' # we don't want to push gem to rubygems

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'minitest'
end
