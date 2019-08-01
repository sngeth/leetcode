# You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

# You may assume the two numbers do not contain any leading zero, except the number 0 itself.

# Example:

# Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
# Output: 7 -> 0 -> 8
# Explanation: 342 + 465 = 807.

class ListNode
  attr_accessor :val, :next

  def initialize(x)
    @val = x
  end

  def to_s
    puts "value: #{val} next: #{next}"
  end
end

class AddTwoNumbers
  def add_two_numbers(l1, l2)
    myStack1 = Array.new
    myStack2 = Array.new

    current_node = l1
    
    while current_node != nil
      myStack1.push(current_node.val)
      current_node = current_node.next
    end

    current_node = l2

    while current_node != nil
      myStack2.push(current_node.val)
      current_node = current_node.next
    end

    num1 = "" 
    num2 = ""
    
    while myStack1.length > 0
      num1 += myStack1.pop.to_s
    end
            
    while(myStack2.length > 0)
      num2 += myStack2.pop.to_s
    end

    sum = num1.to_i + num2.to_i
    reverse_sum = sum.to_s.reverse
  end
end

n1 = ListNode.new(2)
n2 = ListNode.new(4)
n3 = ListNode.new(3)
n1.next = n2
n2.next = n3

n4 = ListNode.new(5)
n5 = ListNode.new(6)
n6 = ListNode.new(4)
n4.next = n5
n5.next = n6

m = AddTwoNumbers.new
m.add_two_numbers(n1, n4)