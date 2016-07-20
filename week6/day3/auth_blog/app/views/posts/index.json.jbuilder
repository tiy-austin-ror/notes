json.array!(@posts) do |post|
  json.extract! post, :id, :title, :body, :user_id, :published
  json.url post_url(post, format: :json)
end
