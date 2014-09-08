class Note < ActiveRecord::Base
  belongs_to :user
  has_many :shares, dependent: :destroy
  validates :name, :description, :user_id, presence: true

end
