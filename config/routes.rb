Rails.application.routes.draw do
 root to: "calcs#index"

 resources :calc
end
