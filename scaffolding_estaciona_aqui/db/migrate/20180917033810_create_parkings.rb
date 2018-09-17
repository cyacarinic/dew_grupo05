class CreateParkings < ActiveRecord::Migration[5.1]
  def change
    create_table :parkings do |t|
      t.integer :user_id
      t.integer :parkingtype_id
      t.string :nombre, limit: 45
      t.string :descripcion, limit: 45
      t.string :telefono, limit: 9
      t.decimal :precio_hora, precision: 10, scale: 2
      t.string :imagen, limit: 50
      t.string :departamento, limit: 50
      t.string :ciudad, limit: 50
      t.string :distrito, limit: 50
      t.string :direccion, limit: 50

      t.timestamps
    end
  end
end
