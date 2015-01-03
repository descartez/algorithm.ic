# create node object
	#node object that has number attribute 
	#next attribute

# create linked_list object
	#a head attribute points to the initial node value of the linked list
	#a tail attribute that points node in the linked list

	#in the linked_list object, the first node that is inserted in will be both the tail and head

	# after you insert the 2nd node, the 2nd node will become the tail

class Node 

	attr_accessor :value, :pointer

	def initialize(value)
		@value = value
	end

end


class LinkedList

	#initializes a list object
	#the first node that is inserted will be both the tail and head since there is only 1 node object
	attr_accessor :head, :tail
	
	def initialize(head_node)
		@head = head_node
		@tail = head_node
	end

	#after you insert another node into the array, this new node become the tail

	def insert(node)
		#this is how you link the nodes together
		@tail.pointer = node
		#the tail is now equal to the last node that was entered into the linked list
		@tail = @tail.pointer
	end

#prints out your node list in a nice format
	def print
	#start printing all the node values from the head
		current_node = @head

	#the tail will have a pointer value of nil so it will stop printing when it gets to a nil value
		while current_node != nil
			puts "Linked List node value = #{current_node.value}"
			current_node = current_node.pointer
		end
	end


	def reverse
		first = @head
		second = @head.pointer
		current = @head.pointer #not sure what this does
		first.pointer = nil
		while second !=nil
			second = second.pointer
			current.pointer = first
			first = current
			current = second
		end
		@head, @tail = @tail, @head
		print
	end

	# def reverse
	# 	current = @head
	# 	until current.nil?
	# 		nxt = current.pointer
	# 		nxt.pointer = current
	# 		current = nxt
	# 	end
	# end

end


#  testing cases for making linked list and reversing

node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(3)
node4 = Node.new(4)
node5 = Node.new(5)

list = LinkedList.new(node1)
list.insert(node2)
list.insert(node3)
list.insert(node4)
list.insert(node5)

list.print
p list.head.value

p list.tail.value

p "*"*50


p list.reverse

p list.head.value
p list.tail.value
