# ------QUEUE-----
class Queue
  attr_reader :array
  def initialize(array)
    @array = array
  end

  def push_queue(items)
    @array.push(items)
  end

  def pop_queue
    dequeued_item = @array[0]
    @array.delete(0)
    return dequeued_item
  end
end


puts "--Queue--"
q = Queue.new(("a".."d").to_a)
q.push_queue("e")
p q.array == ("a".."e").to_a
p q.pop_queue == "a"



# ------STACK-------
class Stack
    attr_reader :array
    def initialize(array)
      @array = array
    end

    def push_stack(items)
      @array.insert(0, items)
    end

    def pop_stack
      top_item = @array[0]
      @array.delete(0)
      return top_item
    end
end

puts "--Stack--"
q = Stack.new(("a".."d").to_a)
q.push_stack("e")
p q.array == (("a".."e").to_a.rotate(-1))
p q.pop_stack == "e"
