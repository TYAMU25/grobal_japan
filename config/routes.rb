Rails.application.routes.draw do
  devise_for :guests
  devise_for :admins
  devise_for :general_users
  #devise_for :admins, controllers: {
   # sessions:      'admin/sessions',
    #passwords:     'admin/passwords',
    #registrations: 'admin/registrations'
  #}
  #devise_for :general_users, controllers: {
   # sessions:      'general_user/sessions',
    #passwords:     'general_user/passwords',
    #registrations: 'general_user/registrations'
  #}

  #devise_for :guests, controllers: {
    #registrations:      'guests/registrations'
  #}

  post 'great/create', to: 'greats#create'
  delete 'great/destroy', to: 'greats#destroy'
  post 'comments/create', to: 'comments#create'
  delete'comments/destroy', to: 'comments#destroy'


  resources :submissions, only:[:create,:edit,:update,:destroy,:show,:new]
  resources :customers, only:[:edit,:update,:show,:unsubscribe,:withdraw]

  get 'homes/top',to: 'homes#top'
  get 'homes/about',to: 'homes#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
