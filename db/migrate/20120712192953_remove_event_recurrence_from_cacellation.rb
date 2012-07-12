class RemoveEventRecurrenceFromCacellation < ActiveRecord::Migration
  def up
    remove_column :cancellations, :event_recurrence_id
  end

  def down
    add_column :cancellations, :event_recurrence_id, :integer
  end
end
