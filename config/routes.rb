Rails.application.routes.draw do

    root 'front_page#index'

    get '/fandom' => 'fandom#index', as: :fandoms
    # display form to add new page:
    get '/fandom/new' => 'fandom#new', as: :new_fandom
    #show one specific page
    get '/fandom/:id' => 'fandom#show', as: :fandom
    # insert new product into database
    post '/fandom' => 'fandom#create'
    # render a form to edit
    get '/fandom/:id/edit' => 'fandom#edit', as: :edit_fandom
    # actually update
    patch '/fandom/:id' => 'fandom#update'
    delete 'fandom/:id' => 'fandom#destroy'

    get 'login' => 'sessions#new', as: :login
    post '/login' => 'sessions#create'
    delete '/logout' => 'sessions#destroy', as: :logout

    get '/user' => 'user#index', as: :users
    get '/user/new' => 'user#new', as: :new_user
    get 'user/:id' => 'user#show', as: :user
    post '/user' => 'user#create'
    get '/user/:id/edit' => 'user#edit', as: :edit_user
    patch '/user/:id' => 'user#update'
    delete 'user/:id' => 'user#destroy'

    get 'fandom/:id' => 'fandomsuser#new', as: :favorite
    post '/fandom' => 'fandomsuser#create'
    delete '/fandom/:id' => 'fandomsuser#destroy', as: :unfavorite
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
