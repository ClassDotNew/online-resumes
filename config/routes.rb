Rails.application.routes.draw do

  get '/resumes' => 'resumes#index'
  get '/resumes/:id' => 'resumes#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
