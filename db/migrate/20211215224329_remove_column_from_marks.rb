# frozen_string_literal: true

class RemoveColumnFromMarks < ActiveRecord::Migration[6.1]
  def change
    remove_column :marks, :post_id, :bigint
  end
end
