Devconapi::Application.routes.draw do

  namespace :api, defaults: { :format => 'json' } do
    namespace :v1 do
      resources :schedules
      resources :speakers
    end
  end

  root :to => "api/v1/speakers#index" , defaults: { :format => 'json' }

end
