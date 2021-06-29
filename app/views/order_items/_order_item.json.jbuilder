json.extract! order_item, :id, :name, :quantity, :price, :created_at, :updated_at
json.url order_item_url(order_item, format: :json)
