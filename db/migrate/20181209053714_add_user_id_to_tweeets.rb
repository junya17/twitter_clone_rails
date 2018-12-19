# frozen_string_literal: true

class AddUserIdToTweeets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweeets, :user_id, :integer
  end
end
