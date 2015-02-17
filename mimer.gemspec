# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mimer'

Gem::Specification.new do |spec|
  spec.name          = "mimer"
  spec.version       = Mimer::VERSION
  spec.authors       = ["Ariejan de Vroom"]
  spec.email         = ["ariejan@ariejan.net"]
  spec.summary       = %q{Find the mime-type of a file using unix' `file` command.}
  spec.description   = %q{Find the mime-type of a file using unix' `file` command. This does not look at file extension, ever.}
  spec.homepage      = "https://github.com/ariejan/mimer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2"
end
