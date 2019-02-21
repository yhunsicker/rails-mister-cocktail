Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
namespace :admin do
  get 'cocktails/index'
end

  resources :cocktails do
    resources :ingredients, only: [:id]
    resources :doses, only: [:create, :new, :destory]
  end
end
