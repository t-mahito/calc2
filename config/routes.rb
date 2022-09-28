Rails.application.routes.draw do
 root to: "calcs#index"

 resources :calcs
end
