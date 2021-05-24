class Movie < ApplicationRecord
  attr_accessor :thumb
  has_one_attached :poster
end
