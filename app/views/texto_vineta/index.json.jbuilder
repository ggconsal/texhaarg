json.array!(@texto_vineta) do |texto_vinetum|
  json.extract! texto_vinetum, :id, :tve_texto, :texto_id
  json.url texto_vinetum_url(texto_vinetum, format: :json)
end
