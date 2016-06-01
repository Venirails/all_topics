json.array!(@companies) do |company|
  json.extract! company, :id, :name, :year
  json.url company_url(company, format: :json)
end
