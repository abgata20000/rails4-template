require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :email => "MyString",
      :nickname => "MyString",
      :nickname_kana => "MyString",
      :auth => 1,
      :premium_flg => false,
      :profile => "MyText",
      :temporary_flg => false
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_nickname[name=?]", "user[nickname]"
      assert_select "input#user_nickname_kana[name=?]", "user[nickname_kana]"
      assert_select "input#user_auth[name=?]", "user[auth]"
      assert_select "input#user_premium_flg[name=?]", "user[premium_flg]"
      assert_select "textarea#user_profile[name=?]", "user[profile]"
      assert_select "input#user_temporary_flg[name=?]", "user[temporary_flg]"
    end
  end
end
