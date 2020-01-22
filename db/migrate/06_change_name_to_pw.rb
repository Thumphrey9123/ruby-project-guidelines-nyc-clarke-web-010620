class ChangeNameToPw < ActiveRecord::Migration[5.0]
    def change
        rename_column :users, :name, :password
    end
end