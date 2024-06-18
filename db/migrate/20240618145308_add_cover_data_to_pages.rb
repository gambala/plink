class AddCoverDataToPages < ActiveRecord::Migration[8.0]
  def change
    add_column :pages, :cover_data, :jsonb
  end
end
