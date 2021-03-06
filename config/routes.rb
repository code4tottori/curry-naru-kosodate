Rails.application.routes.draw do
  resources :applications
  resources :users do
    collection do
      post 'authenticate', to: :authenticate

      resources :applications
    end
  end
  resources :nurseries, only: [ :index, :show ] do
    resources :applications, only: %i[index show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
