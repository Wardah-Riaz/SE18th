require 'spec_helper'

describe "subjects/show" do
  before(:each) do
    @subject = assign(:subject, stub_model(Subject,
      :instructor => "Instructor",
      :subjectname => "Subjectname",
      :descripton => "Descripton",
      :listofstudents => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Instructor/)
    rendered.should match(/Subjectname/)
    rendered.should match(/Descripton/)
    rendered.should match(//)
  end
end
