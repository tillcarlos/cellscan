Cellscan::Engine.routes.draw do
    resources :files
    root to: 'welcome#index'
end
