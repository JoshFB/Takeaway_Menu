class Order
	require 'twilio-ruby'
	require_relative 'menu'

	def add(dish)
		@dish ||= []
		@dish << dish
	end

	def count
		@dish.count
	end

	def total_price
		price = 0
		@dish.each do |dish|
			Menu::ITEMS.each do |item|
				price += item[:price] if item[:name] == dish
			end
		end
		price
	end

	def send_confirmation_text(recipient, total)
		account_sid = 'ACc554135696d0e0aaf59530da8f6942ac' 
		auth_token = '51866d947613932c04abc0450e840f48' 
		@client = Twilio::REST::Client.new account_sid, auth_token 
		@client.account.messages.create({
			:from => '+441278393063', :to => recipient, :body => "Thank's for ordering, your food will be with you in 1 hours (#{add_delivery_time}), #{@dish} the total price is £#{total}"  
		})
	end

	def add_delivery_time
		time = Time.new
		delivery_time = time + (60*60) 
		delivery_time 
	end

	def place(recipient, total)
		send_confirmation_text(recipient, total) if total = total_price
	end


end