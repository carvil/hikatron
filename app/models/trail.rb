class Trail < ActiveRecord::Base
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  validates :name,
            :description,
            :distance,
            :duration,
            :local_number,
            presence: true

  validates :local_number, uniqueness: true

  def slug_candidates
    [
      :local_number,
      [:local_number, :eu_number],
      [:local_number, :eu_number, :name]
    ]
  end
end
