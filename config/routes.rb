Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # password protection
  mount Lockup::Engine, at: '/lockup'

  root 'home#index'

  get '/about', to: 'pages#about'
  get '/resume.pdf', to: 'pages#download_resume_pdf'
  get '/resume', to: 'pages#resume'
  get '/projects', to: 'pages#projects'
  get '/blog', to: 'pages#blog'
  #get '/art', to: 'art#index'

  resources :projects
end
