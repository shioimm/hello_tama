
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "hello_tama/version"

Gem::Specification.new do |spec|
  spec.name          = "hello_tama"
  spec.version       = HelloTama::VERSION
  spec.authors       = ["tamataro"]
  spec.email         = ["tama@example.com"]

  spec.summary       = %q{Puts 'Hello, Tama!'}
  spec.description   = %q{Puts 'Hello, Tama!'}
  spec.homepage      = ""
  spec.license       = "MIT"
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
end
