#in order to delete a node from a linked list, you have to first create Node Objects and well as the linked list object

#creating the linked list object makes possible to access all of the nodes and easily add new nodes to the list
class Node

attr_accessor :pointer, :value

	def initialize(value)
	@value = value
	end

end

class Node_list
	attr_accessor :head, :tail

	def initialize(initial_node)
		@head = initial_node
		@tail = initial_node

	end

	def insert_node(new_node)
		@tail.pointer = new_node
		@tail = @tail.pointer
	end

	def delete_node(node_to_delete)
		#in order to delete a node, you simply have to have the previous node's pointer, skip over the node you want to delete.
		#by having the previous node point to the next node, the node is essentially deleted since there are no nodes pointing to that node object anymore
		#however in single linked list have no way of accessing the previous node, you can just set the node you want to delete to the value of where you wanted the previous node to be pointed to
		if node_to_delete.pointer == nil
			puts ""
			p "You aren't allowed to delete the last node of a linked list"

		else
		next_node = node_to_delete.pointer
		
		p node_to_delete.value = next_node.value
		p node_to_delete.pointer = next_node.pointer
	 	p "you want to delete the node with the value #{node_to_delete.value} and pointer to #{node_to_delete.pointer}"
	 end
	end

	def print
		current_node = @head
			while current_node != nil
				puts  "Linked List node value = #{current_node.value}"
			current_node = current_node.pointer
		end
				puts ""
				puts "The head is #{@head.value}"
				puts "the tail is #{@tail.value}"
	end

end

node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(3)
node4 = Node.new(4)
node5 = Node.new(5)
node6 = Node.new(6)

my_list = Node_list.new(node1)
my_list.insert_node(node2)
my_list.insert_node(node3)
my_list.insert_node(node4)
my_list.insert_node(node5)
my_list.insert_node(node6)


my_list.print

my_list.delete_node(node4)

my_list.print
