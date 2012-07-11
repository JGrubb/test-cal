class RemoveDatetimeAddDateTimeToEvents < ActiveRecord::Migration
  def up
    remove_column :events, :date
    add_column :events, :date, :date
    add_column :events, :time, :time
  end

  def down
    remove_column :events, :date
    remove_column :events, :time
    add_column :events, :date, :datetime
  end
end
