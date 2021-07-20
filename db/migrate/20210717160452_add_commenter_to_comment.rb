class AddCommenterToComment < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :commeter, :string
  end
end
