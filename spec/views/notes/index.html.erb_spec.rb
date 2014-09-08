require 'rails_helper'

RSpec.describe "notes/index", :type => :view do
  before(:each) do
    assign(:notes, [
      Note.create!(
        :name => "Name",
        :description => "MyText",
        :user => nil,
        :importance => "Importance"
      ),
      Note.create!(
        :name => "Name",
        :description => "MyText",
        :user => nil,
        :importance => "Importance"
      )
    ])
  end

  it "renders a list of notes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Importance".to_s, :count => 2
  end
end
