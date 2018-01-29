class CreateFriends < ActiveRecord::Migration[5.1]
  def change
    create_table :friends do |t|
      t.string :nickname
      t.date :dob

      t.timestamps
    end
  end
end
