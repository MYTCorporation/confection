json.array!(@operaria) do |operarium|
  json.extract! operarium, :id, :Tipodocumentos_id, :Numerodocumento, :Nombres, :Apellidos, :Genero, :Direccion, :Correo, :Telefono, :Celular, :DirectorArea, :instructors_id, :Calificacion, :Inicial, :Fecha, :Inicio, :Fecha, :Final
  json.url operarium_url(operarium, format: :json)
end
