require 'spec_helper'

describe "games/new" do
  before(:each) do
    assign(:game, stub_model(Game,
      :title => "MyString",
      :studio => "MyString",
      :comment => "MyText",
      :stars => 1
    ).as_new_record)
  end

  it "renders new game form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", games_path, "post" do
      assert_select "input#game_title[name=?]", "game[title]"
      assert_select "input#game_studio[name=?]", "game[studio]"
      assert_select "textarea#game_comment[name=?]", "game[comment]"
      assert_select "input#game_stars[name=?]", "game[stars]"
    end
  end
end
