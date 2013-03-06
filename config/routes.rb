Nimbus::Application.routes.draw do
  
  root :to => 'site#index'

  get   '/api/pages',   to: 'pages#index', as: 'json'

  get   '/:page_slug',  to: 'pages#show_root_page'
  get   '/:page_slug/:sub_page_slug',  to: 'pages#show_sub_page'
  get   '/:page_slug/:sub_page_slug/:sub_sub_page_slug',  to: 'pages#show_sub_sub_page'






end
