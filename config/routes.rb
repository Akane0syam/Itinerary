Rails.application.routes.draw do
  
  root to: 'homes#top'
  # URL /users/sign_in ...
devise_for :users, controllers: {
  registrations: "user/registrations",
  sessions: 'user/sessions'
}
 
  resources :users, only: [:index, :show, :edit, :update]
  resources :plans, only: [:new, :index, :show, :edit, :update, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
