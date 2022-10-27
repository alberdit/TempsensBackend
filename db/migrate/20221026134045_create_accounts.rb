class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :users
      t.string :nombre
      t.string :apellido
      t.string :mail
      t.string :deviceid

      t.timestamps
    end
  end
end
