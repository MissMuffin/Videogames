require 'spec_helper'



describe "Games" do

  describe "landing page" do

    before(:each) do

      create(:colossus)

      create(:mass)

    end

    it "shows the games in the correct order" do

        visit root_path

        expect(page).to have_content 'Latest Game: Mass Effect 2 by Bioware'

    end

  end

end