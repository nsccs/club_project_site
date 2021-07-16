class ChangeIntToStringClients < ActiveRecord::Migration[6.1]
  def change
    change_column :clients, :phone_number, :string
  end
end
