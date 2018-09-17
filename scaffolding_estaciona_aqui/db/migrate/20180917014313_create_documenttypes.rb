class CreateDocumenttypes < ActiveRecord::Migration[5.1]
  def change
    create_table :documenttypes do |t|
      t.string :nombre, limit: 30

      t.timestamps
    end
  end
end
