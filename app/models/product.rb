class Product < ActiveRecord::Base
  attr_accessible :cena, :nazwa, :opis, :category_id
  belongs_to :category
end
