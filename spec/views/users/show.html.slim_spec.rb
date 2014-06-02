require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :email => "Email",
      :nickname => "Nickname",
      :nickname_kana => "Nickname Kana",
      :auth => 1,
      :premium_flg => false,
      :profile => "MyText",
      :temporary_flg => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    rendered.should match(/Nickname/)
    rendered.should match(/Nickname Kana/)
    rendered.should match(/1/)
    rendered.should match(/false/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
  end
end
