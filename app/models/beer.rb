class Beer < ActiveRecord::Base
	has_many :beerusers, dependent: :delete_all
	has_many :users, through: :beerusers   
end
