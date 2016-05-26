json.array!(@articles) do |article|
  json.extract! article, :id, :title, :content, :excerpt
  json.url article_url(article, format: :json)
end
