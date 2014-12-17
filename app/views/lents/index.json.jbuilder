json.array!(@lents) do |lent|
  json.extract! lent, :id, :date, :title, :text
  json.url lent_url(lent, format: :json)
end
