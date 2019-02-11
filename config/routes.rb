Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/command_center', as: 'rails_admin'
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'

  get 'member',         to: 'members#show',                as: :root_member
  get 'admin',          to: 'admins#show',                 as: :root_admin
  # get 'command_center', to: 'command_center#super_admin',  as: :root_super_admin

end
