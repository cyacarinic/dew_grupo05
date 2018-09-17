class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :usertype_id
      t.integer :documenttype_id
      t.integer :gender_id
      t.string :nombres, limit: 45
      t.string :apellidos, limit: 45
      t.string :correo, limit: 45
      t.integer :numero_documento
      t.string :contrasenia, limit: 45
      t.datetime :fecha_nacimiento
      t.string :telefono, limit: 9

      t.timestamps
    end
  end
end
