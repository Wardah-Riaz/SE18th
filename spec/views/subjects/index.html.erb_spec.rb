require 'spec_helper'

describe "subjects/index" do
  before(:each) do
    assign(:subjects, [
      stub_model(Subject,
        :instructor => "Instructor",
        :subjectname => "Subjectname",
        :descripton => "Descripton",
        :listofstudents => ""
      ),
      stub_model(Subject,
        :instructor => "Instructor",
        :subjectname => "Subjectname",
        :descripton => "Descripton",
        :listofstudents => ""
      )
    ])
  end

  it "renders a list of subjects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Instructor".to_s, :count => 2
    assert_select "tr>td", :text => "Subjectname".to_s, :count => 2
    assert_select "tr>td", :text => "Descripton".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
