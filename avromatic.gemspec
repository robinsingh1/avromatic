# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'avromatic/version'

Gem::Specification.new do |spec|
  spec.name          = "avromatic"
  spec.version       = Avromatic::VERSION
  spec.authors       = ["Salsify Engineering"]
  spec.email         = ["engineering@salsify.com"]

  spec.summary       = %q{Generate Ruby models from Avro schemas}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/salsify/avromatic.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "avro", ">= 1.7.7"
  spec.add_runtime_dependency "virtus"
  spec.add_runtime_dependency "activesupport"
  spec.add_runtime_dependency "activemodel"
  spec.add_runtime_dependency "avro_turf"
  spec.add_runtime_dependency "private_attr"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "avro-builder", ">= 0.3.2"
  # For FakeSchemaRegistryServer
  spec.add_development_dependency "sinatra"
end