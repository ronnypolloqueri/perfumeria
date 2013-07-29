json.array!(@mililitros) do |mililitro|
  json.extract! mililitro, :descripcion
  json.url mililitro_url(mililitro, format: :json)
end
