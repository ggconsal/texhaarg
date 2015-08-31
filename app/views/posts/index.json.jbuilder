json.array!(@posts) do |post|
  json.extract! post, :id, :pos_titulo, :pos_intro, :pos_conclusion, :pos_imagen_tmp
  json.url post_url(post, format: :json)
end
