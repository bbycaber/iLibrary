json.array!(@articles) do |article|
  json.extract! article, :id, :code, :title, :review, :num_page, :themes
  json.url article_url(article, format: :json)
end
