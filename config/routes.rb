Rails.application.routes.draw do
  namespace :user do
    get 'users/show'
    get 'users/edit'
  end
  # URL /users/sign_in ...
  devise_for :users, controllers: {
  registrations: "user/registrations",
  sessions: 'user/sessions'
}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
