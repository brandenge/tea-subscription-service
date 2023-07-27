require 'rails_helper'

RSpec.describe 'Destroy Subscription', type: :request do
  context 'Happy path - valid id' do
    it 'cancels the subscription but does not delete it' do
      subscription = create(:subscription, status: 'Active')

      expect(Subscription.count).to eq(1)
      expect(subscription.status).to eq('Active')
      expect{delete "/api/v0/subscriptions/#{subscription.id}"}
        .to change(Subscription, :count).by(0)
      expect(Subscription.count).to eq(1)
      expect(subscription.status).to eq('Cancelled')
    end

    it 'returns a successful response' do
      subscription = create(:subscription)
      delete "/api/v0/subscriptions/#{subscription.id}"

      expect(response).to be_successful
      expect(response.status).to eq(204)

      expect{ Subscription.find(subscription.id) }
        .to_not raise_error(ActiveRecord::RecordNotFound)
    end
  end
end
