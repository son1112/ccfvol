class Activity < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeouttable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable

  has_many :shifts
  accepts_nested_attributes_for :shifts

  def shifts_for_form
    collection = shifts.where(activity_id: id)
    collection.any? ? collection :shifts.build
  end
end

