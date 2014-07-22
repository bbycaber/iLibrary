json.array!(@magazines) do |magazine|
  json.extract! magazine, :id, :code, :title, :review, :num_page, :source, :themes
  json.url magazine_url(magazine, format: :json)
end
