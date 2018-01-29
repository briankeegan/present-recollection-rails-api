class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :gifts, :gift, :gift_idea
  end
end
