class Api::V0::SubscriptionController < ApplicationController
  def index
    subscriptions = Subscription.all

    render json: SubscriptionSerializer.new(subscriptions).serializable_hash.to_json, status: 200
  end

  def create

  end

  def destroy
    
  end
end
