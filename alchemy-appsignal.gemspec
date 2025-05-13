require_relative "lib/alchemy/appsignal/version"

Gem::Specification.new do |spec|
  spec.name = "alchemy-appsignal"
  spec.version = Alchemy::Appsignal::VERSION
  spec.authors = ["Thomas von Deyen"]
  spec.email = ["thomas@vondeyen.com"]
  spec.homepage = "https://alchemy-cms.com"
  spec.summary = "Alchemy AppSignal error notifier."
  spec.description = "Adds a AppSignal error notifier to AlchemyCMS."
  spec.license = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/AlchemyCMS/alchemy-appsignal"
  spec.metadata["changelog_uri"] = "https://github.com/AlchemyCMS/alchemy-appsignal/tree/main/CHANGELOG.md"

  spec.files = Dir["{lib}/**/*", "LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "alchemy_cms", ">= 4.6.7", "< 9"
  spec.add_dependency "appsignal", "~> 4.5"

  spec.add_development_dependency "github_changelog_generator", "~> 1.16"
  spec.add_development_dependency "sqlite3", "~> 2.6"
  spec.add_development_dependency "rspec-rails", "~> 7.1"
end
