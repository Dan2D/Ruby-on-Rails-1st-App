Rails.application.routes.draw do

root to: 'articles#index'

<<<<<<< HEAD
  resources :articles do
    resources :comments
  end
=======
resources :articles
article_path(id) 
>>>>>>> 549219116c00636e22f7bef769c643ef6aaf6364

end
