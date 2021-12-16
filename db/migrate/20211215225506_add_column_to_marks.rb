# frozen_string_literal: true

class AddColumnToMarks < ActiveRecord::Migration[6.1]
  def change
    add_column :marks, :post_id, :bigint
  end
end
