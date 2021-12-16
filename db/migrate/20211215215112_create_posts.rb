# frozen_string_literal: true

class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :message, comment: 'Сообщение'
      t.references :user, foreign_key: true,
                          comment: 'Внешний ключ для связи с таблицей users'

      t.timestamps
    end
  end
end
