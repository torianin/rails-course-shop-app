class Product < ActiveRecord::Base
    attr_accessible :nazwa, :opis, :cena
end