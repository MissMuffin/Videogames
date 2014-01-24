require 'spec_helper'

describe "Games" do
	describe "index" do
		it "shows the headline" do
			visit game_path
			expect(page).to have_content 'Listing games'
    end
  end
end
