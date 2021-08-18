class CreateCookieClickers < ActiveRecord::Migration[6.1]
  def change
    create_table :cookie_clickers do |t|
      t.integer :click_count, :default => 0
      t.references :model, null: false, foreign_key: true

      t.timestamps
    end
  end
end
