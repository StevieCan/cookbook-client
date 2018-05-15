Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  get '/' => 'client/recipes#index'
  namespace :client do
    get '/recipes' => 'recipes#index'
    get '/recipes/new' => 'recipes#new'
    post '/recipes' => 'recipes#create'
    get '/recipes/:id' => 'recipes#show'
    get'/recipes/:id/edit' => 'recipes#edit'
    patch '/recipes/:id' => 'recipes#update'
    delete '/recipe/:id' => 'recipes#destroy'
  end
end
