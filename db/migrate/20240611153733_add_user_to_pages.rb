class AddUserToPages < ActiveRecord::Migration[8.0]
  def change
    execute "DELETE FROM pages;"
    execute "ALTER SEQUENCE pages_id_seq RESTART WITH 1;"
    add_reference :pages, :user, null: false, foreign_key: true
  end
end
