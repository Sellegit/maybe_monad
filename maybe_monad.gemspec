# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'maybe_monad/version'

Gem::Specification.new do |spec|
  spec.name          = "maybe_monad"
  spec.version       = MaybeMonad::VERSION
  spec.authors       = ["liangjingyang"]
  spec.email         = ["simple.continue@gmail.com"]
  spec.description   = %q{another maybe monad library}
  spec.summary       = %q{another maybe monad library}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rspec"
end
