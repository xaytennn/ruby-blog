json.extract! page_post, :id, :title, :body, :created_at, :updated_at
json.url page_post_url(page_post, format: :json)
