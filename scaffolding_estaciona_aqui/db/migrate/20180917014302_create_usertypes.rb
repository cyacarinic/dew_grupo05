class CreateUsertypes < ActiveRecord::Migration[5.1]
  def change
    create_table :usertypes do |t|
      t.string :nombre, limit: 45
      t.string :descripcion, limit: 45

      t.timestamps
    end
  end
end
