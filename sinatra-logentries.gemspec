# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sinatra-logentries/version'

Gem::Specification.new do |gem|
  gem.name          = "sinatra-logentries"
  gem.version       = Sinatra::Logentries::VERSION
  gem.authors       = ["Tim Santeford"]
  gem.email         = ["tsantef@gmail.com"]
  gem.description   = %q{Adds logging with Logentries}
  gem.summary       = %q{Easy logging in Sinatra with Logentries}
  gem.homepage      = %q{http://github.com/tsantef/sinatra-logentries}
  gem.license       = %q{MIT}

  gem.add_dependency("le", ">= 2.1.6")
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
