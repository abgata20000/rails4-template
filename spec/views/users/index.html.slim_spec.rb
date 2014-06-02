require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :email => "Email",
        :nickname => "Nickname",
        :nickname_kana => "Nickname Kana",
        :auth => 1,
        :premium_flg => false,
        :profile => "MyText",
        :temporary_flg => false
      ),
      stub_model(User,
        :email => "Email",
        :nickname => "Nickname",
        :nickname_kana => "Nickname Kana",
        :auth => 1,
        :premium_flg => false,
        :profile => "MyText",
        :temporary_flg => false
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Nickname".to_s, :count => 2
    assert_select "tr>td", :text => "Nickname Kana".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
