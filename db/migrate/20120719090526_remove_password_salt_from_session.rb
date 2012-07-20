class RemovePasswordSaltFromSession < ActiveRecord::Migration
  def up
    remove_column :sessions, :password_salt
  end

  def down
    add_column :sessions, :password_salt, :string
  end
end
