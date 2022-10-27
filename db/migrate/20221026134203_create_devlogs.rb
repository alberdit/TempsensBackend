class CreateDevlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :devlogs do |t|
      t.string :devlogs
      t.integer :deviceid
      t.string :data

      t.timestamps
    end
  end
end
