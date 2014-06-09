require 'order'
describe Order do 
	let (:order) {Order.new}


	it "should be able to add items from the menu to the order" do
			order.add("Egg fried rice")
			expect(order.count).to eq(1) 
	end

	it "should be able to add the total price of the order" do 
			order.add("Egg fried rice")
			order.add("Egg fried rice")
			expect(order.total_price).to eq(4) 
	end


	it "should send a text after order is placed" do
		order.add("Egg fried rice")
		allow(order).to receive(:send_confirmation_text) { true }
		total = 2
		recipient = "'+447834160367'"

		order.place(recipient, total)
	end

end