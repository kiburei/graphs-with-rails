Rails.application.routes.draw do
  root 'statistics#index'

  resources :statistics do
    collection { post :import_internet_mobile_users }
  end

  resources :charts, only: [] do
  collection do
    get 'internet_mobile_users'
    get 'sporters_by_age'
    get 'sporters_by_country'
    get 'results_by_country'
    get 'competitions_by_year'
  end
end

end
