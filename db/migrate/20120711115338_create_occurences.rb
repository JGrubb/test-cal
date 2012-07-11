class CreateOccurences < ActiveRecord::Migration
  def change
    create_table :occurences do |t|
      t.references :event
      t.datetime :starts
      t.datetime :ends
      t.string :interval

      t.timestamps
    end
    add_index :occurences, :event_id
  end
end
