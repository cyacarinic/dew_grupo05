class CreateParkinghistories < ActiveRecord::Migration[5.1]
  def change
    create_table :parkinghistories do |t|
      t.integer :user_id
      t.integer :parking_id
      t.datetime :fecha_inicio
      t.datetime :fecha_fin
      t.datetime :fecha_registro
      t.datetime :fecha_cancelacion
      t.string :motivo_cancelacion, limit: 300

      t.timestamps
    end
  end
end
