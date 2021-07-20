class AddModelIdToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :model_id, :integer
    add_index :comments, :model_id
  end
end
