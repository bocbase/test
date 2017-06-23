Rails.application.routes.draw do
  resources :setlists
  resources :lives
  resources :histories
  get 'history/:id' , to: 'histories#top'
  get 'history/' , to: 'histories#top'

  get 'live/:id' , to: 'lives#top'
  get 'live/' , to: 'lives#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
