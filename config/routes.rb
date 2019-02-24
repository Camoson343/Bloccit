Rails.application.routes.draw do

  resources :advertisements , :posts

  get 'about' => 'welcome#about'
  get 'advertisement' => 'welcome#advertisements'

  root 'welcome#index'
end
