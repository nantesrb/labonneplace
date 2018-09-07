Rails.application.routes.draw do

  resources :advertisements

  root "advertisements#index"

end
