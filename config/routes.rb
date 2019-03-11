Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :update] do
    resources :meetings, only: [:index, :new, :create, :edit, :update]
  end
  get 'users/:user_id/meetings/preview', to: 'meetings#preview', as: :preview_meeting

  get '/mymeetings', to: 'meetings#index', as: :my_meetings
  get '/profile/personal', to: 'user_characteristics#edit_personal'
  patch '/profile/personal', to: 'user_characteristics#update_personal'

  get '/profile/professional', to: 'user_characteristics#edit_professional'
  patch '/profile/professional', to: 'user_characteristics#update_professional'

  get '/profile/meeting_availability', to: 'user_characteristics#edit_meeting_availability'
  patch '/profile/meeting_availability', to: 'user_characteristics#update_meeting_availability'
end
