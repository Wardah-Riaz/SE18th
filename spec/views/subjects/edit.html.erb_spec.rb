require 'spec_helper'

describe "subjects/edit" do
  before(:each) do
    @subject = assign(:subject, stub_model(Subject,
      :instructor => "MyString",
      :subjectname => "MyString",
      :descripton => "MyString",
      :listofstudents => ""
    ))
  end

  it "renders the edit subject form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", subject_path(@subject), "post" do
      assert_select "input#subject_instructor[name=?]", "subject[instructor]"
      assert_select "input#subject_subjectname[name=?]", "subject[subjectname]"
      assert_select "input#subject_descripton[name=?]", "subject[descripton]"
      assert_select "input#subject_listofstudents[name=?]", "subject[listofstudents]"
    end
  end
end
