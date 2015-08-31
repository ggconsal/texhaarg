json.array!(@textos) do |texto|
  json.extract! texto, :id, :tex_titulo, :tex_texto, :post_id, :tex_imagen_tmp
  json.url texto_url(texto, format: :json)
end
