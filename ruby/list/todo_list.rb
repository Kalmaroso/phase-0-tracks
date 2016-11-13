

class TodoList
	def initialize(to_do_list)
		@list = to_do_list
	end
	
	def get_items
		p @list
	end

	def add_item(new_item)
		@list.push(new_item)
		@list
	end 

	def delete_item(delete_item)
		@list.delete(delete_item)
		@list
	end
	def get_item(index)
		p @list[index]

	end


end

#list = TodoList.new(["do the dishes", "mow the lawn"])
#
#list.add_item("mop")
#
#list.get_items

