Rails.application.routes.draw do
  get 'front_page/index'

    root 'front_page#index'
    get '/fandom' => 'fandom#index', as: :fandoms
    # display form to add new page:
    get '/fandom/new' => 'fandom#new', as: :new_fandom
    #show one specific page
    get '/fandom/:id' => 'fandom#show', as: :fandom
    # insert new product into database
    post '/fandom' => 'fandom#create'
    # render a form to edit an existing product
    get '/fandom/:id/edit' => 'fandom#edit', as: :edit_fandom
    # actually update
    patch '/fandom/:id' => 'fandom#update'
    delete 'fandom/:id' => 'fandom#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
