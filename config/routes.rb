Rails.application.routes.draw do

  
  resources :topics do
    resources :posts, :sponsoredposts, except: [:index]
   end

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
