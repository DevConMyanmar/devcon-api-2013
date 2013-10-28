Devconapi::Application.routes.draw do


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # API namespace start here
  namespace :api, defaults: { :format => 'json' } do
    namespace :v1 do
      resources :schedules
      resources :speakers
      resources :talktypes
    end
  end

  # root to spaker list
  root :to => "home#index"

end
