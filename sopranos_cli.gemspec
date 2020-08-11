require_relative 'lib/sopranos_cli/version'

Gem::Specification.new do |spec|
  spec.name          = "sopranos_cli"
  spec.version       = SopranosCli::VERSION
  spec.authors       = ["KevinCMalin"]
  spec.email         = ["racmalin@yahoo.com"]

  spec.summary       = %q{CLI to navigate information about Sopranos TV Show}
  spec.description   = %q{Check up on Tony and the guys!}
  spec.homepage      = "https://github.com/racmalin/sopranos_cli"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  #spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/racmalin/sopranos_cli"
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  #spec.bindir        = "exe"
  # spec.add_dependency "httparty"
  spec.executables   = ["sopranos"]
  spec.require_paths = ["lib"]
  
end
