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
  
  get 'search' => "search#index"
  post 'great/create', to: 'greats#create'
  delete 'great/destroy', to: 'greats#destroy'
  post 'comments/create', to: 'comments#create'
  delete'comments/destroy', to: 'comments#destroy'


  resources :submissions, only:[:create,:edit,:update,:destroy,:show,:new,:index] do
   resources :commints, only:[:create]
  end
  resources :customers, only:[:edit,:update,:show,:unsubscribe,:withdraw,:unsubscribe]
  resources :general_user, only:[:edit,:update,:show,:index, :create]
 
  get 'homes/about',to: 'homes#about'
  root to: 'homes#top'
  resources :contacts, only:[:new,:create]
  post 'contacts/confirm', to: 'contacts#confirm', as: 'confirm'
  post 'contacts/back', to: 'contacts#back', as: 'back'
  get 'done', to: 'contacts#done', as: 'done'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end