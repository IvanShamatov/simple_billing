# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

resources :bills do 
  get "invoice", on: :member
end

get "billing" => "bills#index"

