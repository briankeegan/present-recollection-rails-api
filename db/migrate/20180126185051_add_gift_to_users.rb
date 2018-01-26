class AddGiftToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :gift, foreign_key: true
  end
end
