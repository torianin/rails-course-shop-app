class Product < ActiveRecord::Base
  attr_accessible :cena, :nazwa, :opis, :category
  belongs_to :category
end
