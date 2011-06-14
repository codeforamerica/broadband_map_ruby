# -*- encoding: utf-8 -*-
require File.expand_path('../lib/broadband_map/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = 'broadband_map'
  gem.version     = BroadbandMap::VERSION
  gem.author      = "Code for America"
  gem.email       = 'info@codeforamerica.org'
  gem.homepage    = ''
  gem.summary     = %q{TODO: Write a gem summary}
  gem.description = %q{TODO: Write a gem description}

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  gem.require_paths = ['lib']

  gem.add_development_dependency 'ZenTest', '~> 4.5'
  gem.add_development_dependency 'maruku', '~> 0.6'
  gem.add_development_dependency 'rake', '~> 0.9'
  gem.add_development_dependency 'rspec', '~> 2.6'
  gem.add_development_dependency 'simplecov', '~> 0.4'
  gem.add_development_dependency 'yard', '~> 0.7'
end
