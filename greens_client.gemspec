# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'greens_client/version'

Gem::Specification.new do |gem|
  gem.name        = "greens_client"
  gem.version     = GreensClient::VERSION

  gem.authors     = ["Sean Watkins"]
  gem.email       = ["slwatkins@uh.edu"]
  
  gem.homepage    = "https://github.com/uhlibraries-digital"
  
  gem.summary     = "This is the gemspec for the Greens Client tool."
  gem.description = "A gem to connect to the Greens minter to manage ARKs"
  gem.license     = "Apache 2.0"

  gem.files = Dir["{lib}/**/*", "LICENSE.txt", "Rakefile", "README.md"]

  gem.add_runtime_dependency 'flexirest', '>= 1.3.33'
end
