class CreateCancellations < ActiveRecord::Migration
  def change
    create_table :cancellations do |t|
      t.references :event
      t.references :event_recurrence
      t.date :date

      t.timestamps
    end
    add_index :cancellations, :event_id
    add_index :cancellations, :event_recurrence_id
  end
end
