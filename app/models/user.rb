class User < ActiveRecord::Base
  has_secure_password

  has_many :reviews
  has_many :products, through: :reviews

end

# To Do/Read:
# http://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html#method-i-has_secure_password
