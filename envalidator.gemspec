# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'envalidator/version'

Gem::Specification.new do |spec|
  spec.name          = "envalidator"
  spec.version       = Envalidator::VERSION
  spec.authors       = ["Volodymyr Ladnik"]
  spec.email         = ["volodymyr.ua@gmail.com.com"]

  spec.summary       = %q{Validate environment variables against regular expression}
  spec.description   = %q{This gem validates environment variables according to provided regular expression.
                          It will output examples if it doesn't match. It was designed to validate environment
                          variables in production before trouble happened.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  spec.add_dependency "regexp-examples", "~> 1.2.0"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
