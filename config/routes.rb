Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'
  get '/admin/contact' => 'admin/contact#index', as: "contact"
  get 'pages/contact' => 'pages#contact', as: "user_contact"
  get 'pages/about' => 'pages#about', as: "about"
end
