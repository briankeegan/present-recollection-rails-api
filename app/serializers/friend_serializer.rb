# frozen_string_literal: true

class FriendSerializer < ActiveModel::Serializer
  attributes :id, :nickname, :dob

  has_many :gifts
end
