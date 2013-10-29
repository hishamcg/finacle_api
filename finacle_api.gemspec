# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'finacle_api/version'

Gem::Specification.new do |spec|
  spec.name          = "finacle_api"
  spec.version       = FinacleApi::VERSION
  spec.authors       = ["bit/bit"]
  spec.email         = ["test@example.com"]
  spec.description   = "Facilitate API calls to Finacle"
  spec.summary       = "Facilitate API calls to Finacle"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec", "~> 2.6"
  spec.add_dependency "faraday", "~> 0.8.8"
  spec.add_dependency "faraday_middleware", "~> 0.9.0"
  spec.add_dependency "activemodel", "~> 3.2.1"
  spec.add_dependency "multi_xml", "~> 0.2"
  spec.add_development_dependency "rake"
end
