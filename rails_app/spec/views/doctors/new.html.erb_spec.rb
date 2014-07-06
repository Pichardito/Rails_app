require 'rails_helper'

RSpec.describe "doctors/new", :type => :view do
  before(:each) do
    assign(:doctor, Doctor.new(
      :name => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip_code => 1,
      :npi => 1,
      :license => 1
    ))
  end

  it "renders new doctor form" do
    render

    assert_select "form[action=?][method=?]", doctors_path, "post" do

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
