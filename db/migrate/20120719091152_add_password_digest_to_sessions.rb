class AddPasswordDigestToSessions < ActiveRecord::Migration
  def change
    add_column :sessions, :password_digest, :string
  end
end
