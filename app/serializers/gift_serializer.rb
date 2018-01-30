# frozen_string_literal: true

class GiftSerializer < ActiveModel::Serializer
  attributes :id, :gift_idea, :friend_id

  belongs_to :friend
end
