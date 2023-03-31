require_relative "base_generator"

module Generators
  module Cellscan
    class InstallGenerator < BaseGenerator
      namespace "cellscan:install"
      desc "Creates a Cellscan initializer adds the route to the routes file."
      class_option :path, type: :string, default: "cellscan"

      def create_initializer_file
        route "mount Cellscan::Engine, at: '/cellscan'"

        template "initializer/avo.tt", "config/initializers/cellscan.rb"
        directory File.join(__dir__, "templates", "locales"), "config/locales"
      end

      unless Rails.root.join("app", "assets", "stylesheets", "cellscan.tailwind.css").exist?
        say "Add default app/assets/stylesheets/cellscan.tailwind.css"
        copy_file template_path("tailwind.css"), "app/assets/stylesheets/cellscan.tailwind.css"
      end

    end
  end
end
