class Shift < ActiveRecord::Base
  belongs_to :activity
  has_and_belongs_to_many :volunteers
  has_and_belongs_to_many :users
end
