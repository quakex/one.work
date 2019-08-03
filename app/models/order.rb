class Order < ApplicationRecord
  include RailsTrade::Order
  include RailsTrade::Amount
  include RailsTrade::PaymentType::Paypal
  include RailsTrade::PaymentType::Alipay
  include RailsTrade::PaymentType::Wxpay
  include RailsCrm::Order
  
  def payment_memo_id
    nil
  end
  
end





