class AddModelIdToTweets < ActiveRecord::Migration[6.1]
  def change
    add_column :tweets, :model_id, :integer
    add_index :tweets, :model_id
  end
end
