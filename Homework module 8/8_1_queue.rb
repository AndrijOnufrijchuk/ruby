

module DoubleEndedQueue

  def add_first elem
    @queue.unshift(elem)
  end
  

  def add_last elem
    @queue.push(elem)
  end

  def remove_first
    @queue.shift
  end


  def remove_last
    @queue.pop
  end

  def get_first
    @queue[0]
  end

  def get_last
    @queue[@queue.length-1]
  end

  def return_deck
    @queue.inspect
  end

end

class Resource
  include DoubleEndedQueue

  def initialize arr
    @queue = arr || Array.new
  end

end
arr=Array.new
arr.push(gets.chomp.to_i)
arr.push(gets.chomp.to_i)
arr.push(gets.chomp.to_i)
arr.push(gets.chomp.to_i)
arr.push(gets.chomp.to_i)
obj=Resource.new(arr)
puts obj.inspect
obj.add_first(0)
puts obj.inspect
obj.add_last(6)
puts(obj.inspect)
puts obj.get_first
puts obj.get_last
puts obj.remove_first
puts obj.inspect
puts obj.remove_last
puts obj.inspect