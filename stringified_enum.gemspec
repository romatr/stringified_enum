
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "stringified_enum/version"

Gem::Specification.new do |spec|
  spec.name          = "stringified_enum"
  spec.version       = StringifiedEnum::VERSION
  spec.authors       = ["Roman Trofimov"]
  spec.email         = ["trofimov.roman@gmail.com"]

  spec.summary       = %q{A lightweight enum built over the standard ActiveRecord enum.}
  spec.description   = %q{It simplifies creation of enums which are supposed to have one-to-one mapping to their keys and values.}
  spec.homepage      = "https://github.com/romatr/stringified_enum"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "activesupport", ">= 4.1"
  spec.add_dependency "activerecord", ">= 4.1"
end
