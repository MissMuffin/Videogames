require 'spec_helper'

describe "Games" do
	#describe "index" do
	#	it "shows the headline" do
	#		visit game_path
	#		expect(page).to have_content 'Listing games'

	describe "basic index" do
		before(:each) do
			create(:colossus)
			create(:mass)
			create(:sims)
		end

	describe "index" do
		it "shows the headline" do
			visit games_path
			expect(page).to have_content 'Listing games'
			expect(page).to have_content 'Team ICO'
		end
		it "should list all game instances" do
			visit games_path
			expected_row_count = Game.count+1
			page.all("table tr").count.should eql(expected_row_count)
		end
	end

	describe "renders all paths: " do
		before(:each) do
			@colossus = create(:colossus)
		end
		it "show" do
			visit game_path(@colossus)
			expect(page).to have_content 'Shadow of the Colossus'
		end
		it "edit" do
			visit edit_game_path(@colossus)
			expect(page).to have_content 'Edit'
		end

    end
  end
end
