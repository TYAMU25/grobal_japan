Rails.application.routes.draw do
  devise_for :general_users
  # devise_for :admins, controllers: {
  # sessions:      'admin/sessions',
  # passwords:     'admin/passwords',
  # registrations: 'admin/registrations'
  # }
  # devise_for :general_users, controllers: {
  # sessions:      'general_user/sessions',
  # passwords:     'general_user/passwords',
  # registrations: 'general_user/registrations'
  # }

  # devise_for :guests, controllers: {
  # registrations:      'guests/registrations'
  # }

  get 'search' => 'search#index'

  scope :great do
    resources :great, only: %i[create destroy]
  end

  # TODO : After Delete
  # post 'great/create', to: 'great#create'
  # delete 'great/destroy', to: 'great#destroy'

  post 'comments/create', to: 'comments#create'
  delete 'comments/destroy', to: 'comments#destroy'

  resources :submissions, only: %i[create edit update destroy show new index] do
    resources :commints, only: [:create]
  end
  get 'customers/unsubscribe' => 'customers/withdraw'
  patch 'customers/withdraw'
  resources :customers, only: %i[edit update show destroy]
  resources :general_user, only: %i[edit update show index create]

  root to: 'homes#top'
  resources :contacts, only: %i[new create]
  post 'contacts/confirm', to: 'contacts#confirm', as: 'confirm'
  post 'contacts/back', to: 'contacts#back', as: 'back'
  get 'done', to: 'contacts#done', as: 'done'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :relationships, only: %i[create destroy]
  get 'followings' => 'relationships#followings', as: 'followings'
  get 'followers' => 'relationships#followers', as: 'followers'
end
