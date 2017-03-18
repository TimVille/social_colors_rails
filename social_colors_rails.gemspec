$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "social_colors_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "social_colors_rails"
  s.version     = SocialColorsRails::VERSION
  s.authors     = ["Timothée Ville"]
  s.email       = ["tim.ville@me.com"]
  s.homepage    = "https://github.com/TimVille/social_colors_rails"
  s.summary     = %q{Add official color to stacked font-awesome social brand icon.}
  s.description = "Based on font-awesome, rails-social-colors provide official colors of social brand icons"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.2"

  s.add_development_dependency "sqlite3"
end
