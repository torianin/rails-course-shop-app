class Product < ActiveRecord::Base
  attr_accessible :cena, :nazwa, :opis
  belongs_to :category
end
