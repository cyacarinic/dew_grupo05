json.extract! parking, :id, :user_id, :parkingtype_id, :nombre, :descripcion, :telefono, :precio_hora, :imagen, :departamento, :ciudad, :distrito, :direccion, :created_at, :updated_at
json.url parking_url(parking, format: :json)
