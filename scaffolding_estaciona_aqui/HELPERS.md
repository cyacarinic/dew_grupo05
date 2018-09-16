# COMANDOS DE AYUDA

$ rails new demo_scaffolding
$ rails g scaffold Persona dni:integer nombre:string{50} apellido:string{50} edad:integer correo:string{50} salario:decimal{'10,2'} fechanac:datetime
$ rake db:create
$ rake db:migrate

# Para el rollback
$ rails destroy scaffold Persona
$ rake db:drop:all

# Las dependencias crearán las validaciones
# https://guides.rubyonrails.org/active_record_validations.html
$ rails new demo_scaffolding
$ rails g scaffold Tipo nombre:string{20}
$ rails g scaffold Gasto descripcion:string{50} tipo_id:integer
$ vim app/models/tipo.rb
    agregar relación con la tabla 'has_many :gastos, :dependent => :destroy'
$ vim app/models/gasto.rb
    agregar relación con el modelo 'belongs_to :tipo'
$ rake db:create
$ rake db:migrate
$ vim app/views/gastos/index.html.erb
    cambiar 'gasto.tipo_id' por 'gasto.tipo.nombre'
$ vim app/views/gastos/new.html.erb
    me llevará a \_form
$ vim app/views/gastos/\_form.html.erb
    comentar '<%= form.number_field :tipo_id, id: :gasto_tipo_id %>'
    agregar combobox para que jale los datos del modelo Tipo:
    '<%= form.collection_select :tipo_id, Tipo.all, :id, :nombre %>'
