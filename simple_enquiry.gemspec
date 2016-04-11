$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_enquiry/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_enquiry"
  s.version     = SimpleEnquiry::VERSION
  s.authors     = ["Aditia Mahdar"]
  s.email       = ["adit@41studio.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of SimpleEnquiry."
  s.description = "TODO: Description of SimpleEnquiry."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "sqlite3"
end
