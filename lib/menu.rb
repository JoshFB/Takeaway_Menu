class Menu
	ITEMS = [{name: "Egg fried rice", price: 2}]

def self.show
	ITEMS
end

def display_menu
	puts "Select item"
	@select_item = gets.chomp
end


def add_items_to_order
	@dish << @select_item
end



end