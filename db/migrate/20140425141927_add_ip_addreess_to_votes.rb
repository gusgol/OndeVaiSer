class AddIpAddreessToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :ip_address, :string
    add_index :votes, :ip_address
    add_index :votes, :name
    
  end
end
