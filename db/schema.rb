# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_211_215_225_506) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'marks', force: :cascade do |t|
    t.integer 'mark', comment: 'Оценка 1..10'
    t.bigint 'user_id', comment: 'Внешний ключ для связи с таблицей users'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.bigint 'post_id'
    t.index ['user_id'], name: 'index_marks_on_user_id'
  end

  create_table 'posts', force: :cascade do |t|
    t.string 'message', comment: 'Сообщение'
    t.bigint 'user_id', comment: 'Внешний ключ для связи с таблицей users'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['user_id'], name: 'index_posts_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name', comment: 'Имя пользователя'
    t.string 'email', comment: 'Электронная почта'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
  end

  add_foreign_key 'marks', 'users'
  add_foreign_key 'posts', 'users'
end
