Platen::Application.routes.draw do
  resources :data_types


  resources :field_types


  resources :entries


  resources :entry_types


  resources :entry_views


  resources :sections


  resources :section_types


  resources :section_views


  resources :sites


  resources :site_types


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end