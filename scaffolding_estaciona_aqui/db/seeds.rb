# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Usertype.create({id: 1, nombre: "Administrador", descripcion: "Administrador del sitema"})
Usertype.create({id: 2, nombre: "Propietario", descripcion: "Dueño de un parqueo"})
Usertype.create({id: 3, nombre: "Usuario", descripcion: "Cliente en búsqueda de parqueo"})

Documenttype.create({id: 1, nombre: "DNI"})
Documenttype.create({id: 2, nombre: "RUC"})
Documenttype.create({id: 3, nombre: "OTROS"})

User.create({
    usertype_id: 1,
    documenttype_id: 1,
    nombres: "Claudio",
    apellidos: "Yacarini",
    correo: "cyacarinic@gmail.com",
    numero_documento: "46148321",
    contrasenia: "P@ssw0rd",
    genero: "Masculino",
    fecha_nacimiento: "1989-11-16 05:00:00 UTC",
    telefono: "949194949"
})
