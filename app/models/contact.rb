class Contact < ActiveRecord::Base
  attr_accessible :email, :message, :name, :subject, :recaptcha

  validates_presence_of :name, :email, :subject, :message

  validates_format_of :email,
  :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  validates_length_of :message, :minimum => 10

end
