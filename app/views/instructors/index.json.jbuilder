json.array!(@instructors) do |instructor|
  json.extract! instructor, :id, :tipodocumento_id, :numedoc, :nombre, :apellido, :genero, :direccion, :correo, :telefono, :area, :rol, :lineacargo
  json.url instructor_url(instructor, format: :json)
end
