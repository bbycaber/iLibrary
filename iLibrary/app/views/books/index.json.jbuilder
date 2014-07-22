json.array!(@books) do |book|
  json.extract! book, :id, :code, :title, :review, :num_page, :book_type, :source, :themes
  json.url book_url(book, format: :json)
end
