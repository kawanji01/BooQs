class RenameMicropostsToBulletins < ActiveRecord::Migration[7.0]
  def change
    rename_table :microposts, :bulletins
  end
end
