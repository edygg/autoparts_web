json.array!(@replacements) do |replacement|
  json.extract! replacement, :id, :name, :sale_price, :purchase_price, :units_in_stock
  json.url replacement_url(replacement, format: :json)
end
