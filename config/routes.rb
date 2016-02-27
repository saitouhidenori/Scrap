Rails.application.routes.draw do


devise_for :designers, controllers: {
  sessions:      'designers/sessions',
  passwords:     'designers/passwords',
  registrations: 'designers/registrations'
}
devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}

root 'scrap#index'
# get 'scrap'   => 'scrap/index'
# get 'scrap/:id' => 'scrap#show'
resources :scrap, only: [:index, :show]
get "scrap/index" => "scrap#index"
get 'designer/new'=> 'designers#new'
get 'designers/:id'=> 'designers#index'
get 'users/:id' => 'users#show'

get 'designers/:id' => 'designers#show'



end
