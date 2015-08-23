# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

resources :bills
get "billing" => "bills#index"