Devconapi::Application.routes.draw do

  devise_for :admins

  # API namespace start here
  namespace :api, defaults: { :format => 'json' } do
    namespace :v1 do
      resources :schedules
      resources :speakers
    end
  end

  # root to spaker list
  root :to => "home#index"

end
