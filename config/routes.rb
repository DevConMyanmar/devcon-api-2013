Devconapi::Application.routes.draw do

  resources :feedbacks

  resources :locations

  devise_for :admin_users, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)

  # API namespace start here

  namespace :api, defaults: { :format => 'json' } do
    namespace :v1 do
      resources :schedules
      resources :speakers
      resources :talktypes
      resources :locations
    end
  end

  root :to => "home#index"

  ActiveAdmin.routes(self)
end
