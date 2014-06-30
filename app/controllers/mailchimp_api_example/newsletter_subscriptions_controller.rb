module MailchimpApiExample
  class NewsletterSubscriptionsController < ApplicationController
    def new
    end

    def create
      newsletter = Newsletter.new('e42daa6e55')

      if newsletter.subscribe(params[:email])
        flash[:notice] = "Thanks for subscribing to our newsletter!"
        redirect_to new_mailchimp_api_example_newsletter_subscription_path
      else
        flash[:alert] = "We could not add you to our newsletter."
      end
    end
  end
end
