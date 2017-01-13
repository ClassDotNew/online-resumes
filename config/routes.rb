Rails.application.routes.draw do


  # get '/index' => 'resumes#index'
  # get '/resume/:id' => 'resumes#show'

  get '/resumes' => 'resumes#index'
  get '/resumes/:id' => 'resumes#show'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
