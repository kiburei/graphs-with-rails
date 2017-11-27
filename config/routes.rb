Rails.application.routes.draw do
  root 'statistics#index'
  get 'statistics/export_internet_mobile_users', :to => 'statistics#export_internet_mobile_users'

  resources :statistics do
    collection { post :import_internet_mobile_users}
  end


  resources :charts, only: [] do
  collection do
    get 'mobile_users'
    get 'internet_users'
    get 'sporters_by_age'
    get 'sporters_by_country'
    get 'results_by_country'
    get 'competitions_by_year'
  end
end

end
