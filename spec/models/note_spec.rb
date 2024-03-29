require 'rails_helper'

RSpec.describe Note, :type => :model do

  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:description)}
  it {should validate_presence_of(:user_id)}

end
