require_relative "lib/cell_scan/version"

Gem::Specification.new do |spec|
  spec.name        = "cell_scan"
  spec.version     = CellScan::VERSION
  spec.authors     = ["Till Carlos"]
  spec.email       = ["till@tillcarlos.com"]
  spec.homepage    = "https://tillcarlos.com/cellscan"
  spec.summary     = "A simple CSV viewer as an engine for Rails."
  spec.description = "Include the engine in your Rails app and you can view CSV files in your browser."
  spec.license     = "MIT"
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://tillcarlos.com/cellscan"
  spec.metadata["changelog_uri"] = "https://tillcarlos.com/cellscan"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.4"
  spec.add_dependency "tailwindcss-rails", "~> 2.0"
  spec.add_dependency "stimulus-rails"
  spec.add_dependency "pagy"
  spec.add_dependency "rubyzip"
end
