class UpdateLocationWithApi < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :url, :string
    add_column :locations, :summary, :text
  end
end
