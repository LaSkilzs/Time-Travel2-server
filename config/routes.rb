Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :profiles
      resources :helpwanteds
      resources :generations
      resources :funfacts
      resources :applications
      resources :jobs, controller: 'jobs' do
        get 'filtered' => 'jobs#filtered'
      end
      resources :industries, controller: 'industries' do
        get 'filtered' => 'industries#filtered'
      end
    end
  end
  
  
end
