# frozen_string_literal: true

class CreateGifts < ActiveRecord::Migration[5.1]
  def change
    create_table :gifts do |t|
      t.string :nickname, null: false
      t.date :dob
      t.string :gift, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
