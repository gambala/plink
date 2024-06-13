class AddPageToLinks < ActiveRecord::Migration[8.0]
  def change
    execute "DELETE FROM links;"
    execute "ALTER SEQUENCE links_id_seq RESTART WITH 1;"
    add_reference :links, :page, null: false, foreign_key: true
  end
end
