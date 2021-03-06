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

  s.files = Dir["{app,lib,spec}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "railties", ">= 3.2", "< 5.1"
  s.add_dependency "font-awesome-rails", '>= 4.7.0.1'

  s.add_development_dependency "activesupport"
  s.add_development_dependency "sass-rails"
  s.add_development_dependency "sqlite3"

  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "nokogiri"
  s.add_development_dependency "rspec-html-matchers"

  s.required_ruby_version = '>= 1.9.3'
end
