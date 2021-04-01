require_relative "lib/secrett11tto/version"

Gem::Specification.new do |spec|
  spec.name        = "secrett11tto"
  spec.version     = Secrett11tto::VERSION
  spec.authors     = ["Igor Kasyanchuk"]
  spec.email       = ["igorkasyanchuk@gmail.com"]
  spec.homepage    = "https://github.com/igorkasyanchuk/secrett11tto"
  spec.summary     = "Make copy-pasting much harder."
  spec.description = "Make copy-pasting much harder."
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/igorkasyanchuk/secrett11tto"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "activesupport"
  spec.add_development_dependency "rails"
end
