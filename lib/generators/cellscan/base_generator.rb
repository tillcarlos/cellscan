require "rails/generators"

module Generators
  module Avo
    class BaseGenerator < ::Rails::Generators::Base
      hide!

      def initialize(*args)
        super(*args)
      end
    end
  end
end
