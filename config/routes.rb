Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'admin#all_users'

  get  'supervisor_users' => 'admin#supervisor_users'

  get 'show_user' => 'admin#show_user'

  post 'edit_user' => 'admin#edit_user'

  post 'edit_role' => 'admin#edit_role'
  
  post 'delete_user' => 'admin#delete_user'
  
  get 'delete_user' => 'admin#delete_user'
end
