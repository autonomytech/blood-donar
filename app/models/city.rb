class City < ActiveRecord::Base
  belongs_to :district
  scope :shodh, ->(id) { where(id: id).take }
  validates :name, presence: true
  def district_name
    district.name if district
  end
end
