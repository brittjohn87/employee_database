Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'all_users' => 'admin#all_users'

  get 'show_user' => 'admin#show_user'

  # post 'edit_user' => 'admin#edit_user'
  
  post 'delete_user' => 'admin#delete_user'
  
  get 'delete_user' => 'admin#delete_user'
end
