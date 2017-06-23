json.extract! history, :id, :ymd, :category, :text, :created_at, :updated_at
json.url history_url(history, format: :json)
