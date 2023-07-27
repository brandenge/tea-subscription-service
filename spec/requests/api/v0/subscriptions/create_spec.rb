require 'rails_helper'

RSpec.describe 'Create Subscription', type: :request do
  context 'Happy path - valid request' do
    it 'creates a new subscription' do
      post api_v0_subscriptions_path({
        customer_id: 123,
        tea_id: 456,
        title: 'Tea Subscription Title',
        price: 500,
        status: 'Active',
        frequency: 10
      })

      subscription = Subscription.last
      expect(Subscription.count).to eq(1)
      expect(subscription.customer_id).to eq(123)
      expect(subscription.tea_id).to eq(456)
      expect(subscription.title).to eq('Tea Subscription Title')
      expect(subscription.price).to eq(500)
      expect(subscription.status).to eq('Active')
      expect(subscription.frequency).to eq(10)
    end

    it 'returns the new subscription' do
      post api_v0_subscriptions_path({
        customer_id: 123,
        tea_id: 456,
        title: 'Tea Subscription Title',
        price: 500,
        status: 'Active',
        frequency: 10
      })

      expect(response).to be_successful
      expect(response.status).to eq(200)

      subscription = JSON.parse(response.body, symbolize_names: true)

      expect(subscription).to be_a(Hash)
      expect(subscription).to have_key(:id)
      expect(subscription).to have_key(:type)
      expect(subscription).to have_key(:attributes)

      expect(subscription[:id]).to be_a(String)
      expect(subscription[:type]).to eq('subscription')

      expect(subscription[:attributes]).to be_a(Hash)

      expect(subscription[:attributes]).to have_key(:customer_id)
      expect(subscription[:attributes]).to have_key(:tea_id)
      expect(subscription[:attributes]).to have_key(:title)
      expect(subscription[:attributes]).to have_key(:price)
      expect(subscription[:attributes]).to have_key(:status)
      expect(subscription[:attributes]).to have_key(:frequency)

      expect(subscription[:attributes][:customer_id]).to be_a(Integer)
      expect(subscription[:attributes][:tea_id]).to be_a(Integer)
      expect(subscription[:attributes][:title]).to be_a(String)
      expect(subscription[:attributes][:price]).to be_a(Integer)
      expect(subscription[:attributes][:status]).to be_in(['Active', 'Cancelled'])
      expect(subscription[:attributes][:frequency]).to be_a(Integer)
    end
  end
end
