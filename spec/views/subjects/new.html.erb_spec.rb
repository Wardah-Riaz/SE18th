require 'spec_helper'

describe "subjects/new" do
  before(:each) do
    assign(:subject, stub_model(Subject,
      :instructor => "MyString",
      :subjectname => "MyString",
      :descripton => "MyString",
      :listofstudents => ""
    ).as_new_record)
  end

  it "renders new subject form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", subjects_path, "post" do
      assert_select "input#subject_instructor[name=?]", "subject[instructor]"
      assert_select "input#subject_subjectname[name=?]", "subject[subjectname]"
      assert_select "input#subject_descripton[name=?]", "subject[descripton]"
      assert_select "input#subject_listofstudents[name=?]", "subject[listofstudents]"
    end
  end
end
