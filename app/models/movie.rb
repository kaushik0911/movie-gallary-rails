class Movie < ApplicationRecord
  attr_accessor :thumb

  has_one_attached :poster do |attachable|
    attachable.variant :thumb, resize: "273x273"
  end
end
