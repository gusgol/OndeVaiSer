class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.date :poll_date
      t.string :group_id

      t.timestamps
    end
  end
end
