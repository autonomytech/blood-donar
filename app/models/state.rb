class State < ActiveRecord::Base
  has_many :districts
  scope :shodh, ->(id) { where(id: id).take }
end
