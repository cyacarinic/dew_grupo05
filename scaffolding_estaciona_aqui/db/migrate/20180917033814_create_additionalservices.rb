class CreateAdditionalservices < ActiveRecord::Migration[5.1]
  def change
    create_table :additionalservices do |t|
      t.integer :parking_id
      t.string :nombre, limit: 45
      t.string :descripcion, limit: 45
      t.decimal :precio_hora, precision: 10, scale: 2

      t.timestamps
    end
  end
end
