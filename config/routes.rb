Rails.application.routes.draw do

  namespace :gibbon_example do
    resources :newsletter_subscriptions, only: [:new, :create]
  end

  namespace :mailchimp_api_example do
    resources :newsletter_subscriptions, only: [:new, :create]
  end
end
