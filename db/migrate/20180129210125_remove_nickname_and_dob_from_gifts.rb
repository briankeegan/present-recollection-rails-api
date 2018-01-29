class RemoveNicknameAndDobFromGifts < ActiveRecord::Migration[5.1]
  def change
    remove_column :gifts, :nickname, :string
    remove_column :gifts, :dob, :string
  end
end
