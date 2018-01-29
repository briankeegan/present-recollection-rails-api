# frozen_string_literal: true

class Friend < ApplicationRecord
  belongs_to :user
  has_many :gifts
end
