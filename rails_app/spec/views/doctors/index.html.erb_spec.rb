require 'rails_helper'

RSpec.describe "doctors/index", :type => :view do
  before(:each) do
    assign(:doctors, [
      Doctor.create!(
        :name => "Name",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip_code => 1,
        :npi => 2,
        :license => 3
      ),
      Doctor.create!(
        :name => "Name",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip_code => 1,
        :npi => 2,
        :license => 3
      )
    ])
  end

  it "renders a list of doctors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
