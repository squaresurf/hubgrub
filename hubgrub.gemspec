# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hubgrub/version'

Gem::Specification.new do |spec|
  spec.name          = "hubgrub"
  spec.version       = Hubgrub::VERSION
  spec.authors       = ["Daniel Paul Searles"]
  spec.email         = ["daniel.paul.searles@gmail.com"]

  spec.summary       = %q{For when you want to be fed all your atom releases feeds from GitHub.}
  spec.description   = %q{hubgrub is a cli tool to quickly get the releases atom feeds for Github repositories that you have starred or are following.}
  spec.homepage      = "https://github.com/squaresurf/hubgrub"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.8"
  spec.add_development_dependency "minitest-reporters", "~> 1.1"
end
