class AddCounterToModels < ActiveRecord::Migration[6.1]
  def change
    add_column :models, :click_counter, :integer, :default => 0
  end
end
