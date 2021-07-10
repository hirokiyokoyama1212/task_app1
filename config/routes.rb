Rails.application.routes.draw do
  get "/" => "schedules#index"
  get "schedules/index" => "schedules#index"
  get "schedules/new" => "schedules#new"
  resources :schedules
  
end
