require 'rails_helper'

RSpec.describe "notes/new", :type => :view do
  before(:each) do
    assign(:note, Note.new(
      :name => "MyString",
      :description => "MyText",
      :user => nil,
      :importance => "MyString"
    ))
  end

  it "renders new note form" do
    render

    assert_select "form[action=?][method=?]", notes_path, "post" do

      assert_select "input#note_name[name=?]", "note[name]"

      assert_select "textarea#note_description[name=?]", "note[description]"

      assert_select "input#note_user_id[name=?]", "note[user_id]"

      assert_select "input#note_importance[name=?]", "note[importance]"
    end
  end
end
