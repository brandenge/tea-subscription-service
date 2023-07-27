class SubscriptionSerializer
  include JSONAPI::Serializer

  set_type :subscription

  attributes :customer_id,
             :tea_id,
             :title,
             :price,
             :status,
             :frequency
end
