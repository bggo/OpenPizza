class AddPhoneToClients < ActiveRecord::Migration
  def change
	add_column :clients, :phone, :integer	
  end
end
