# coding: utf-8
require 'base64'
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-cssh/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-cssh"
  spec.version       = VagrantPlugins::Cssh::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ["Bhaskar Nidumukalla"]
  spec.email         = ["bWVAYmhhc2thci51cw==\n"].map { |e| Base64.decode64(e) }
  spec.description   = %q{Vagrant cSSH is a clustered ssh utility}
  spec.summary       = %q{Vagrant cSSH is a clustered ssh utility for running commands on multiple vagrant guests}
  spec.homepage      = "https://github.com/dig3rati/vagrant-cssh/wiki"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.post_install_message = <<-USAGE
Vagrant cSSH is a SSH utility to run commands on multiple guests
USAGE
end
