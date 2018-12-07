Rails.application.routes.draw do

root to: 'articles#index'

resources :articles
article_path(id) 

end
