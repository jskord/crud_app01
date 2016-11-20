Rails.application.routes.draw do
  get '/messages' => 'messages#index'
  get '/messages/new' => 'messages#new'
  post '/messages' => 'messages#create'
  get '/messages/:id' => 'messages#show'
  get '/messages/:id/edit' => 'messages#edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
