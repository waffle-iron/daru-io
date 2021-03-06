# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'daru/io/version'

Gem::Specification.new do |spec|
  spec.name          = 'daru-io'
  spec.version       = Daru::IO::VERSION
  spec.authors       = ['Athitya Kumar']
  spec.email         = ['athityakumar@gmail.com']
  spec.summary       = %q{Daru-IO is a plugin gem to Daru gem, which stands for Data Analysis in RUby.}
  spec.description   = %q{Daru-IO is a plugin gem to Daru gem, which stands for Data Analysis in RUby.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "daru", "~> 0.1.5"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'rspec-its'
  spec.add_development_dependency 'rubocop', '>= 0.40.0'
  spec.add_development_dependency 'ruby-prof'
  if RUBY_VERSION >= '2.2.5'
    spec.add_development_dependency 'guard-rspec'
  end
end
