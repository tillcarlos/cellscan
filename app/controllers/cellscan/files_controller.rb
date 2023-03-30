require 'pagy/extras/array'

module Cellscan
  class FilesController < ApplicationController
    include Pagy::Backend
    include ActionView::Helpers::UrlHelper
    
    Pagy::DEFAULT[:items] = 10
    def open
      @path = params[:path]
      @highlight = params[:highlight]&.to_i
      @error = nil
      if @path.present?
        begin
          @headers, data = Cellscan.file_loader.call(@path)
          data = convert_links(data) if @headers.first == "ZIPCONTENT"
          @headers.unshift("index")
          opts = {page: (@highlight.to_f / Pagy::DEFAULT[:items]).ceil} if @highlight
          ap opts
          data = data.map.with_index{|row, i| [i+1, *row]}
          @pagy, @rows = pagy_array(data, **opts)
        rescue => e 
          @error = e.message
        end
      end
    end

    private def convert_links(data)
      ata.map do |row|
        row[1] = link_to("open", open_files_path(path: row[1]), class: 'underline')
        row
      end
    end

  end
end
