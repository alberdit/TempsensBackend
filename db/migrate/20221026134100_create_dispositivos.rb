class CreateDispositivos < ActiveRecord::Migration[7.0]
  def change
    create_table :dispositivos do |t|
      t.string :devices
      t.string :identificador
      t.string :mail
      t.integer :prioridad

      t.timestamps
    end
  end
end
