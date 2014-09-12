json.array!(@marbles) do |marble|
  json.extract! marble, :id, :user_id, :marble_name, :marble_text
  json.url marble_url(marble, format: :json)
end
