Higgins::Application.routes.draw do
  match '/home/register' => "home#login"
  match '/home/:action', :controller => 'home'
  root :to => "home#index"
end
