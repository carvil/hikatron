class Trail < ActiveRecord::Base
  validates :name,
            :description,
            :distance,
            :duration,
            :local_number,
            presence: true

  validates :local_number, uniqueness: true
end
