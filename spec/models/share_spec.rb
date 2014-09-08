require 'rails_helper'

RSpec.describe Share, :type => :model do

  it {should validate_presence_of(:owner_id)}
  it {should validate_presence_of(:receiver_id)}
  it {should validate_presence_of(:note_id)}



end
