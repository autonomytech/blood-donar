class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :state
  belongs_to :district
  belongs_to :city

  def full_name
    first_name + ' ' + last_name
  end

  def self.search(donar)
    select(:first_name, :last_name).where(blood_group: \
        donar[:blood_group], state_id: \
        donar[:state_id], district_id: \
        donar[:district_id], city_id: donar[:city_id])
  end
end
