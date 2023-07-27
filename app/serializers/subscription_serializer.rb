class SubscriptionSerializer
  include JSONAPI::SubscriptionSerializer

  set_type :subscription

  attributes :title,
             :price,
             :status,
             :frequency
end
