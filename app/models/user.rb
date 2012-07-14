class User < ActiveRecord::Base
attr_accessible :name, :email, :password, :password_confirmation


 validates_presence_of :name, :email, :password, :password_confirmation

 validates_format_of :email,
  :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

validates_length_of :password, :minimum => 6
end

