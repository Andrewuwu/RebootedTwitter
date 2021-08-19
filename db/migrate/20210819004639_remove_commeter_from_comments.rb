class RemoveCommeterFromComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :commeter, :string
  end
end
