# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mtgapi/version'

Gem::Specification.new do |spec|
  spec.name          = "mtgapi"
  spec.version       = Mtgapi::VERSION
  spec.authors       = ["Nate West"]
  spec.email         = ["natescott.west@gmail.com"]
  spec.description   = %q{Testing the api}
  spec.summary       = %q{Magic!}
  spec.homepage      = "http://natescottwest.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-minitest"
  spec.add_development_dependency "faker"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "dotenv"

  spec.add_dependency "httparty"
end
