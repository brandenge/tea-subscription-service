require 'rails_helper'

RSpec.describe 'Destroy Subscription', type: :request do
  context 'Happy path - valid id' do
    it 'deletes the subscription' do
      subscription = create(:subscription)

      expect(Subscription.count).to eq(1)
      expect{
        delete api_v0_subscriptions_path,
        headers: { CONTENT_TYPE: 'application/json' },
        params: JSON.generate(id: subscription.id)
      }.to change(Subscription, :count).by(-1)
      expect(Subscription.count).to eq(0)
    end

    it 'returns a successful response' do
      subscription = create(:subscription)
      delete api_v0_subscriptions_path(subscription.id)

      expect(response).to be_successful
      expect(response.status).to eq(204)

      expect{ Subscription.find(subscription.id) }
      .to raise_error(ActiveRecord::RecordNotFound)
    end
  end
end
