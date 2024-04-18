require "sidekiq/web"
Rails.application.routes.draw do
  devise_for :users
  mount Sidekiq::Web => "/sidekiq"
  authenticate :user, lambda { |u| u.admin? } do
  end
  root :to => "pages#home"
  post "hello" => "pages#hello"
  get "up" => "rails/health#show", as: :rails_health_check
end
