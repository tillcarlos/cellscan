module Cellscan
  class ApplicationController < ActionController::Base
    layout 'cellscan/application'
    include Pagy::Backend
  end
end
