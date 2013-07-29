json.array!(@perfumes) do |perfume|
  json.extract! perfume, :nombre, :tipo_id, :sexo_id, :precio, :mililitro_id, :imagen_url
  json.url perfume_url(perfume, format: :json)
end
