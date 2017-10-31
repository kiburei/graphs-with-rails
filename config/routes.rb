Rails.application.routes.draw do
  root 'statistics#index'

  resources :charts, only: [] do
  collection do
    get 'sporters_by_age'
  end
end

end
