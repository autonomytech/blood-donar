class District < ActiveRecord::Base
  belongs_to :state
  has_many :cities
  scope :shodh, ->(id) { where(id: id).take }

  def state_name
    state.name if state
  end
end
