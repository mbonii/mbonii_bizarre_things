# frozen_string_literal: true

require_relative "lib/mbonii_bizarre_things/version"

Gem::Specification.new do |spec|
  spec.name = "mbonii_bizarre_things"
  spec.version = MboniiBizarreThings::VERSION
  spec.authors = ["Marcos Bonifasi"]
  spec.email = ["marcosbonifasi19@gmail.com"]

  spec.summary = "Homework :("
  spec.description = "Homework :("
  spec.homepage = "https://github.com/mbonii"
  spec.required_ruby_version = ">= 2.6.0"
  spec.license = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/mbonii/mbonii_bizarre_things"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
