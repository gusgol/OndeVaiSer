class RemovePollDateFromPolls < ActiveRecord::Migration
  def change
    remove_column :polls, :poll_date, :date
    add_column :polls, :name, :string
  end
end
