class RemoveTitles < ActiveRecord::Migration

  def change
    remove_column :messages, :title
  end
end
