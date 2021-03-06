TestApp::Application.routes.draw do
  resources :blogs, defaults: { :format => :json }

  post 'auth-tests/basic', to: 'auth_tests#basic'

  mount Rswag::Api::Engine => 'api-docs'
  mount Rswag::Ui::Engine => 'api-docs'
end
