json.array!(@marcas) do |marca|
  json.extract! marca, :description
  json.url marca_url(marca, format: :json)
end
