require 'menu'

describe Menu do
	it "can show a list of items" do
		expect(Menu.show.first[:name]).to eq "Egg fried rice"
	end

end