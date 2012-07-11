class RemoveRepeatFromEvents < ActiveRecord::Migration
  def up
    remove_column :events, :repeat
    add_column    :events, :description, :text
  end

  def down
    add_column :events, :repeat, :string
    remove_column :events, :description
  end
end
