# frozen_string_literal: true

class Gift < ApplicationRecord
  belongs_to :friend
  belongs_to :user
end
