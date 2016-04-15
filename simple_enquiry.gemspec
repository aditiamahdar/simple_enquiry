$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_enquiry/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_enquiry"
  s.version     = SimpleEnquiry::VERSION
  s.authors     = ["Aditia Mahdar"]
  s.email       = ["adit.mahdar@gmail.com"]
  s.homepage    = "https://github.com/aditiamahdar/simple_enquiry"
  s.summary     = "Rails Gem to add simple enquiry feature for Active Record"
  s.description = "Make us easier to add enquiry feature for our e-commerce or marketplace. It contain some functions such as: asking question for related item and owner can reply the message"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_development_dependency "rails", "~> 4.2.6"
  s.add_development_dependency "sqlite3"
end
