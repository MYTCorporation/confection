json.array!(@profesors) do |profesor|
  json.extract! profesor, :id
  json.url profesor_url(profesor, format: :json)
end
