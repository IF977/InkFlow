Rails.application.routes.draw do

  get 'contact/us'

  get 'presentation/tree'

root 'welcome#index'
  get 'welcome/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
