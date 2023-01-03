Rails.application.routes.draw do
<<<<<<< HEAD
  root to: 'homes#top'
=======
  get 'homes/top'
>>>>>>> origin/main
  # URL /users/sign_in ...
devise_for :users, controllers: {
  registrations: "user/registrations",
  sessions: 'user/sessions'
}
 namespace :user do
    resources :users, only: [:show, :edit, :update]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
