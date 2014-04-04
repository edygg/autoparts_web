json.array!(@customers) do |customer|
  json.extract! customer, :id, :identity, :name, :age, :gender, :mobile, :email, :address
  json.url customer_url(customer, format: :json)
end
