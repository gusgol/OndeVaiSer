OndeVaiSer::Application.routes.draw do
  resources :options

  resources :lists

  resources :polls

  resources :groups

  resources :votes
  get 'search', :to => 'search_groups#search'
  get 'query', :to => 'groups#query'

  root :to => 'search_groups#search'
end
