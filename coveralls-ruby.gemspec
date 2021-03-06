# -*- encoding: utf-8 -*-
require File.expand_path('../lib/coveralls/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Wil Gieseler"]
  gem.email         = ["supapuerco@gmail.com"]
  gem.description   = "A Ruby implementation of the Coveralls API."
  gem.summary       = "A Ruby implementation of the Coveralls API."
  gem.homepage      = "http://coveralls.io"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "coveralls"
  gem.require_paths = ["lib"]
  gem.version       = Coveralls::VERSION

  gem.add_dependency 'rest-client'
  gem.add_dependency 'colorize'
  gem.add_dependency 'json'
  gem.add_dependency 'thor'

  if Gem::Version.new(RUBY_VERSION.dup) >= Gem::Version.new("1.9")
    gem.add_dependency 'simplecov', ">= 0.7"
  end

  gem.add_runtime_dependency('jruby-openssl') if RUBY_PLATFORM == 'java'

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rake'

end
