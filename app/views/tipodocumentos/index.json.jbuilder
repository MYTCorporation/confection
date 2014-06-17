json.array!(@tipodocumentos) do |tipodocumento|
  json.extract! tipodocumento, :id, :CC, :TI, :CE
  json.url tipodocumento_url(tipodocumento, format: :json)
end
