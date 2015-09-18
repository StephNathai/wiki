json.array!(@articles) do |article|
  json.extract! article, :id, :user_id, :tag_id, :content, :title
  json.url article_url(article, format: :json)
end
