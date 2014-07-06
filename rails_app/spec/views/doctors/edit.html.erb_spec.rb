require 'rails_helper'

RSpec.describe "doctors/edit", :type => :view do
  before(:each) do
    @doctor = assign(:doctor, Doctor.create!(
      :name => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip_code => 1,
      :npi => 1,
      :license => 1
    ))
  end

  it "renders the edit doctor form" do
    render

    assert_select "form[action=?][method=?]", doctor_path(@doctor), "post" do

      assert_select "input#doctor_name[name=?]", "doctor[name]"

      assert_select "input#doctor_address[name=?]", "doctor[address]"

      assert_select "input#doctor_city[name=?]", "doctor[city]"

      assert_select "input#doctor_state[name=?]", "doctor[state]"

      assert_select "input#doctor_zip_code[name=?]", "doctor[zip_code]"

      assert_select "input#doctor_npi[name=?]", "doctor[npi]"

      assert_select "input#doctor_license[name=?]", "doctor[license]"
    end
  end
end
