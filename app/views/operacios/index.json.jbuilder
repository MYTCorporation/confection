json.array!(@operacios) do |operacio|
  json.extract! operacio, :id, :area, :cantidadProceso, :maquinas, :tiposTelas, :TiempoEstandar, :instructorCargo, :insumos, :Referencia, :Descripcion
  json.url operacio_url(operacio, format: :json)
end
