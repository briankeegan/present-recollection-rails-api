# frozen_string_literal: true

class AddDataFromGiftToFriends < ActiveRecord::Migration[5.1]
  def change
    gifts = Gift.all
    gifts.each do |gift|
      user = User.find { |u| u.id == gift.user_id }
      if user.nil?
        gift.delete
        gift.save
      else

        friend = user.friends.find do |f|
          f.nickname == gift.nickname && f.dob == gift.dob
        end
        if friend.nil?
          friend = user.friends.new(nickname: gift.nickname, dob: gift.dob)
          friend.save if friend.valid?
        end

        gift.friend_id = friend.id
      end
      gift.save if gift.valid?
    end
  end
end
