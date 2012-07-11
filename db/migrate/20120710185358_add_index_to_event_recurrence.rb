class AddIndexToEventRecurrence < ActiveRecord::Migration
  def change
    add_index :event_recurrences, :event_id
  end
end
