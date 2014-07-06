require 'rails_helper'

RSpec.describe "users/new", :type => :view do
  before(:each) do
    assign(:user, User.new(
      :name => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip_code => 1,
      :npi => 1,
      :license => 1
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_address[name=?]", "user[address]"

      assert_select "input#user_city[name=?]", "user[city]"

      assert_select "input#user_state[name=?]", "user[state]"

      assert_select "input#user_zip_code[name=?]", "user[zip_code]"

      assert_select "input#user_npi[name=?]", "user[npi]"

      assert_select "input#user_license[name=?]", "user[license]"
    end
  end
end
