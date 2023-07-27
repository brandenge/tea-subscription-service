require 'rails_helper'

RSpec.describe Subscription, type: :poro do
  attributes = {
    id: 123,
    title: 'Subscription for tea',
    price: 500,
    status: 'Active',
    frequncy: 10
  }

  subject(:subscription) { create(:subscription, attributes) }

  describe '#initialize' do
    it 'exists' do
      expect(subscription).to be_a(Subscription)
    end
  end

  describe 'attributes' do
    it 'has attributes' do
      expect(subscription.id).to eq(123)
      expect(subscription.title).to eq('Subscription for tea')
      expect(subscription.price).to eq(500)
      expect(subscription.status).to eq('Active')
      expect(subscription.frequency).to eq(10)
    end
  end
end
