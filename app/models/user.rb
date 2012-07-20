class User < ActiveRecord::Base
require 'bcrypt'
	attr_accessible :name, :email, :password, :password_confirmation
	has_secure_password
        before_save { |user| user.email = email.downcase }


 	validates_presence_of :name, :email, :password, :password_confirmation

 	validates_format_of :email,
  	:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

	validates_uniqueness_of :email,:message => "is already taken"

	validates_length_of :password, :minimum => 6, :on => :create

	validates_confirmation_of :password

end

