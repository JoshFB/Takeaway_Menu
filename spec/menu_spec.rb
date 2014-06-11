require 'menu'

describe Menu do
let (:menu) {Menu.new}

	it "can show a list of items" do
		expect(Menu.show.first[:name]).to eq "Egg fried rice"
	end

	it "can display the menu to user" do 
		
		end

end