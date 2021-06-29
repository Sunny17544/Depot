class Order < ApplicationRecord

    has_many :order_items
    belongs_to :cart
    has_many :payments

    enum pay_type: 
    {
        "Debit card" => 0,
        "Credit card" => 1
    }

    validates :name, :address, :email, presence: true
    validates :pay_type, inclusion: pay_types.keys

end

