# frozen_string_literal: true

class CreateMarks < ActiveRecord::Migration[6.1]
  def change
    create_table :marks do |t|
      t.integer    :mark, comment: 'Оценка 1..10'
      t.references :post, foreign_key: true,
                          comment: 'Внешний ключ для связи с таблицей post'
      t.references :user, foreign_key: true,
                          comment: 'Внешний ключ для связи с таблицей users'

      t.timestamps
    end

    remove_column :post_id
  end
end
