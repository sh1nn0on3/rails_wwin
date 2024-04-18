require "sidekiq/web"
Rails.application.routes.draw do
  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => "/sidekiq"
  end
  get 'pages#home'
  get "up" => "rails/health#show", as: :rails_health_check

end
