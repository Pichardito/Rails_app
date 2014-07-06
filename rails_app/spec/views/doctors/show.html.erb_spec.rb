require 'rails_helper'

RSpec.describe "doctors/show", :type => :view do
  before(:each) do
    @doctor = assign(:doctor, Doctor.create!(
      :name => "Name",
      :address => "Address",
      :city => "City",
      :state => "State",
      :zip_code => 1,
      :npi => 2,
      :license => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
