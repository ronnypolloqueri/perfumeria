json.array!(@perfumes) do |perfume|
  json.extract! perfume, :nombre, :marca_id, :sexo_id, :tipo_id, :mililitro_id, :imagen_id, :precio
  json.url perfume_url(perfume, format: :json)
end
