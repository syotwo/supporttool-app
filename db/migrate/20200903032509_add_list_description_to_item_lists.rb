class AddListDescriptionToItemLists < ActiveRecord::Migration[6.0]
  def change
    add_column :item_lists, :list_description, :text
  end
end
