# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tube_frame/version'

Gem::Specification.new do |spec|
  spec.name          = "tube_frame"
  spec.version       = TubeFrame::VERSION
  spec.authors       = ["Archit Agrawal"]
  spec.email         = ["archit2u@gmail.com"]
  spec.description   = %q{A gem to get video frame from a youtube or vimeo url.}
  spec.summary       = %q{Youtube or Vimeo Frames.}
  spec.homepage      = "https://github.com/archit2u/tube_frame"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
