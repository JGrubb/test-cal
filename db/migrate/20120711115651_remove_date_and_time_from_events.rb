class RemoveDateAndTimeFromEvents < ActiveRecord::Migration
  def up
    remove_column :events, :date
    remove_column :events, :time
  end

  def down
    add_column :events, :date, :date
    add_column :events, :time, :time
  end
end
