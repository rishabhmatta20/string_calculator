# string_calculator.gemspec
Gem::Specification.new do |spec|
  spec.name          = "string_calculator"
  spec.version       = "0.1.0"
  spec.authors       = ["Rishabh Matta"]
  spec.email         = ["rishabhmatta20@gmail.com"]

  spec.summary       = %q{A simple string calculator}
  spec.description   = %q{A simple string calculator that supports various delimiters and handles negative numbers.}
  spec.homepage      = "http://example.com"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*.rb"]
  spec.test_files    = Dir["spec/**/*.rb"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 3.0"
end
