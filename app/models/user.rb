class User < ActiveRecord::Base
  has_secure_password
  email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

   validates :name, :presence => true

   validates :email, :presence => true, :format => { :with => email_regex }, :uniqueness => { :case_sensitive => false }

   validates :password, :presence => true

   belongs_to :organization
   has_one :profile
end
