Rails.application.routes.draw do
  root 'statistics#index'

  resources :charts, only: [] do
  collection do
    get 'sporters_by_age'
    get 'sporters_by_country'
    get 'results_by_country'
    get 'competitions_by_year'
  end
end

end
