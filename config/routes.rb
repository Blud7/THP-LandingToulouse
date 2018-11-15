Rails.application.routes.draw do
  
  root to: 'home#index'
  
  get 'home/index'
  get 'home/index1'
  get 'home/index2'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
