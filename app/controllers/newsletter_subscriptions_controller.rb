class NewsletterSubscriptionsController < ApplicationController
  def new
    @newsletter_subscription = NewsletterSubscription.new
  end

  def create
    @newsletter_subscription = NewsletterSubscription.new(newsletter_params)
  end

  private

  def newsletter_params
    params.require(:newsletter_subscription).permit(:email)
  end
end
