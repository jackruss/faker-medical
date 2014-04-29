# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faker/medical/version'

Gem::Specification.new do |spec|
  spec.name        = 'faker-medical'
  spec.version     = Faker::Medical::VERSION
  spec.authors     = ['Tom & Russell']
  spec.email       = 'thing2@jackhq.com'
  spec.description = 'This gem is an extension of the Faker Gem to generate SSN, DEA, and NPI Numbers'
  spec.summary     = 'Faker Extension for Medical Numbers'
  spec.homepage    = 'https://github.com/jackhq/faker-medical'
  spec.license     = 'MIT'

  spec.files = `git ls-files`.split("\n")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'faker'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'thoughtbot-shoulda'
end
