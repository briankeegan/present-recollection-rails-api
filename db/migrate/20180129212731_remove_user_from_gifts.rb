class RemoveUserFromGifts < ActiveRecord::Migration[5.1]
  def change
    remove_reference :gifts, :user, foreign_key: true, null: false
  end
end
