json.extract! user, :id, :usertype_id, :nombres, :apellidos, :correo, :numero_documento, :tipo_documento, :contrasenia, :genero, :fecha_nacimiento, :telefono, :created_at, :updated_at
json.url user_url(user, format: :json)
