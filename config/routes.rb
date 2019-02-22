Rails.application.routes.draw do

  resources :advertisements

  get 'advertisement' => 'welcome#advertisements'

  root 'welcome#index'
end
