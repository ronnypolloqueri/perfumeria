json.array!(@sexo) do |sexo|
  json.extract! sexo, :string
  json.url sexo_url(sexo, format: :json)
end
