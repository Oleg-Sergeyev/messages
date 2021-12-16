# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, comment: 'Имя пользователя'
      t.string :email, comment: 'Электронная почта'

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
