class User < ActiveRecord::Base
	has_secure_password
	has_many :beerusers, dependent: :delete_all
	has_many :beers, through: :beerusers   
end
