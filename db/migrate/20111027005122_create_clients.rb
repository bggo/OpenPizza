class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.integer :number
      t.string :complement
      t.string :mail

      t.timestamps
    end
  end
end
