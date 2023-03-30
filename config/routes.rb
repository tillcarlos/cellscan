Cellscan::Engine.routes.draw do
    resources :files do
        get :open, on: :collection
    end
    root to: 'welcome#index'
end
