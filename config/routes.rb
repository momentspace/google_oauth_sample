Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'root#index'

  get  '/auth/:provider/callback' => 'omniauth_callbacks#callback'
  post '/auth/:provider/callback'  => 'omniauth_callbacks#callback'
  get  '/auth/failure' => 'omniauth_callbacks#failure'
  get  '/logout' => 'omniauth_callbacks#destroy'
end
