class CreateEventRecurrences < ActiveRecord::Migration
  def change
    create_table :event_recurrences do |t|
      t.references :event
      t.date :start_date
      t.string :every
      t.date :end_date

      t.timestamps
    end
  end
end
