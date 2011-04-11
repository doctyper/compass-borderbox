Gem::Specification.new do |s|
  # Release Specific Information
  s.version = "0.1.2.0"
  s.date = "2011-04-11"

  # Gem Details
  s.name = "compass-borderbox"
  s.authors = ["Richard Herrera"]
  s.summary = %q{Use the CSS3 box-sizing property with legacy support for IE}
  s.description = %q{Use box-sizing: border-box; with impunity. Borderbox outputs equivalent CSS for IE6 & 7}
  s.email = "rich@doctyper.com"
  s.homepage = "https://github.com/doctyper/compass-borderbox"

  # Gem Files
  s.files = %w(README.md)
  s.files += Dir.glob("lib/**/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")

  # Gem Bookkeeping
  s.has_rdoc = false
  s.rubygems_version = %q{1.3.6}
  s.add_dependency("sass", [">= 3.1.0.alpha"])
  s.add_dependency("compass", [">= 0.11.beta.5"])
end

