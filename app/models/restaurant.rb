class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy

  validates :stars, inclusion: { in: [1,2,3], allow_nil: true }
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: {in: ["chinese", "italian", "japanese", "french", "belgian"]}
end
