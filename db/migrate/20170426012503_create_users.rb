class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :token
      t.integer :lesson

      t.timestamps
    end
  end
end
