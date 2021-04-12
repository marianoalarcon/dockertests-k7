json.extract! article, :id, :name, :type, :created_at, :updated_at
json.url article_url(article, format: :json)
