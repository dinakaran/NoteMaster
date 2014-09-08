class Share < ActiveRecord::Base
  belongs_to :note
  belongs_to :owner, class_name: "User"
  belongs_to :receiver, class_name: "User"

  validates :owner_id, :receiver_id, :note_id, presence: true
end
