$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "ian/utils/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "ian-utils"
  spec.version     = Ian::Utils::VERSION
  spec.authors     = ["ian"]
  spec.email       = ["1612944051@qq.com"]
  spec.homepage    = "https://www.mini-geek.com"
  spec.summary     = "Ian::Utils."
  spec.description = "Description of Ian::Utils."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", ">= 5.1.0"

  spec.add_development_dependency "sqlite3"
end
