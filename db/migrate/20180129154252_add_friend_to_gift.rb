class AddFriendToGift < ActiveRecord::Migration[5.1]
  def change
    add_reference :gifts, :friend, foreign_key: true
  end
end
