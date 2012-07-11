class DropEventRecurrences < ActiveRecord::Migration
  def up
    drop_table :event_recurrences
  end
  
  remove_index :cancellations, :event_recurrence_id

  def down
    remove_column :events, :repeat
    create_table :event_recurrences do |t|
      t.references :event
      t.date :start_date
      t.string :every
      t.date :end_date

      t.timestamps
    end
  end
end
