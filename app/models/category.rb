class Category < ActiveRecord::Base
  attr_accessible :nazwa
  has_many :products
end
