Rails.application.routes.draw do




  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get 'tutorial/index'
  get 'contact/index'
  get 'presentation/index'
  get 'welcome/index'

  resources :teams do
  	resources :okrs do
  		resources :krs
  	end
  end


root 'welcome#index'


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
