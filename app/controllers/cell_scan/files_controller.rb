require 'pagy/extras/array'

module CellScan
  class FilesController < ApplicationController
    include Pagy::Backend
    
    Pagy::DEFAULT[:items] = 10
    def index
      @path = params[:path]
      @error = nil
      if @path.present?
        begin
          @headers, data = CellScan.file_loader.call(@path)
          @pagy, @rows = pagy_array(data)
        rescue => e 
          @error = e.message
        end
      end
    end
  end
end
