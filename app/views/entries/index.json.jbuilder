json.array!(@entries) do |entry|
  json.extract! entry, :id, :title, :tag, :content, :category_id, :user_id
  json.url entry_url(entry, format: :json)
end
