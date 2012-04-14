# -*- encoding: utf-8 -*-
require File.expand_path('../lib/snapper/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Adam Darrah", "Eric Sendelbach"]
  gem.email         = ["piremies@gmail.com", "eric.sendelbach@gmail.com"]
  gem.description   = %q{Capture and restore irb snapshots and stuff}
  gem.summary       = %q{Capture and restore irb snapshots}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "snapper"
  gem.require_paths = ["lib"]
  gem.version       = Snapper::VERSION
  gem.add_dependency("activesupport")
  gem.add_dependency("uuid")
end
