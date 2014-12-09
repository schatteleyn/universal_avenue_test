Rails.application.routes.draw do
  root to: "blogs#index"
  devise_for :blogs
  resources :blogs do
    get '/posts', to: 'posts#index', as: 'posts_index'
    resource :posts, except: [:show, :destroy] do
      get '/:post_id/show', to: 'posts#show', as: 'show'
      delete '/:post_id/destroy', to: 'posts#destroy', as: 'destroy'
    end
  end
end
