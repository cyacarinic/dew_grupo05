class CreateRates < ActiveRecord::Migration[5.1]
  def change
    create_table :rates do |t|
      t.integer :user_id
      t.integer :parking_id
      t.string :comentario, limit: 300
      t.integer :puntuacion

      t.timestamps
    end
  end
end
