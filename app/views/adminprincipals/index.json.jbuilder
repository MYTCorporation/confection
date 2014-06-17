json.array!(@adminprincipals) do |adminprincipal|
  json.extract! adminprincipal, :id
  json.url adminprincipal_url(adminprincipal, format: :json)
end
