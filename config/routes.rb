Higgins::Application.routes.draw do
  match '/home/:action', :controller => 'home'
  root :to => "home#index"
end
