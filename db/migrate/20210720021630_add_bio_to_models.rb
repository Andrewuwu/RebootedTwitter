class AddBioToModels < ActiveRecord::Migration[6.1]
  def change
    add_column :models, :bio, :text
  end
end
