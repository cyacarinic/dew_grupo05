json.extract! user, :id, :usertype_id, :documenttype_id, :gender_id, :nombres, :apellidos, :correo, :numero_documento, :contrasenia, :fecha_nacimiento, :telefono, :created_at, :updated_at
json.url user_url(user, format: :json)
