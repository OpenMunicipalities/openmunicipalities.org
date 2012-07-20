class RemovePasswordHashFromSession < ActiveRecord::Migration
  def up
    remove_column :sessions, :password_hash
  end

  def down
    add_column :sessions, :password_hash, :string
  end
end
