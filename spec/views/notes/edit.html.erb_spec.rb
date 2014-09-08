require 'rails_helper'

RSpec.describe "notes/edit", :type => :view do
  before(:each) do
    @note = assign(:note, Note.create!(
      :name => "MyString",
      :description => "MyText",
      :user => nil,
      :importance => "MyString"
    ))
  end

  it "renders the edit note form" do
    render

    assert_select "form[action=?][method=?]", note_path(@note), "post" do

      assert_select "input#note_name[name=?]", "note[name]"

      assert_select "textarea#note_description[name=?]", "note[description]"

      assert_select "input#note_user_id[name=?]", "note[user_id]"

      assert_select "input#note_importance[name=?]", "note[importance]"
    end
  end
end
