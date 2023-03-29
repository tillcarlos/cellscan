Rails.application.routes.draw do
  mount CellScan::Engine => "/cell_scan"
end
