# COMANDOS GENERADORES
rails g scaffold Usertype \
    nombre:string{45} \
    descripcion:string{45}

rails g scaffold Documenttype \
    nombre:string{30}


rails g scaffold User \
    usertype_id:integer \
    documenttype_id:integer \
    nombres:string{45} \
    apellidos:string{45} \
    correo:string{45} \
    numero_documento:integer \
    contrasenia:string{45} \
    genero:string{10} \
    fecha_nacimiento:datetime \
    telefono:string{9}


rails g scaffold Parking \
    nombre:string{45} \
    descripcion:string{45} \
    telefono:string{9} \
    tipo_estacionamiento:string{10} \
    precio_hora:decimal{'10,2'} \
    imagen:string{50} \
    departamento:string{50} \
    ciudad:string{50} \
    distrito:string{50} \
    direccion:string{50}


rails g scaffold Additionalservice \
    parking_id:integer \
    nombre:string{45} \
    descripcion:string{45} \
    precio_hora:decimal{'10,2'}


rails g scaffold Rate \
    user_id:integer \
    parking_id:integer \
    comentario:string{300} \
    puntuacion:integer


rails g scaffold Parkinghistory \
    user_id:integer \
    parking_id:integer \
    fecha_inicio:datetime \
    fecha_fin:datetime \
    fecha_registro:datetime \
    fecha_cancelacion:datetime \
    motivo_cancelacion:string{300}


rake db:create && rake db:migrate


# Modificar modelos con llaves foráneas x las relaciones (has_many, belongs_to)
