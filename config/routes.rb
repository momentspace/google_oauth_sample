Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'roots#index'

  get  '/auth/:provider/callback' => 'omni_auth_callbacks#callback'
  post '/auth/:provider/callback'  => 'omni_auth_callbacks#callback'
  get  '/auth/failure' => 'omni_auth_callbacks#failure'
  get  '/logout' => 'omni_auth_callbacks#destroy'
end
