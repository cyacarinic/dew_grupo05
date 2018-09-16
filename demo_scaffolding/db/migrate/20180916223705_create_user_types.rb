class CreateUserTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :user_types do |t|
      t.string :nombre, limit: 45
      t.string :descripcion, limit: 45

      t.timestamps
    end
  end
end
