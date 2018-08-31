Rails.application.routes.draw do
  get 'students' => 'students#index'

  get 'students/:id/show' => 'students#show'
  get 'students/:id/activate' => 'students#activate'

  resources :posts, only: [:index, :show]

end