class AddDateAndUrlToBulletins < ActiveRecord::Migration[7.0]
  def change
    add_column :bulletins, :announcement_date, :date
    add_column :bulletins, :url, :string
    add_column :bulletins, :title, :string
    remove_index :bulletins, [:user_id, :created_at]
    remove_column :bulletins, :user_id
    add_index :bulletins, :announcement_date
  end
end
