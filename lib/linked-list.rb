class LinkedList

  attr_accessor :head, :tail
  
  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    if self.head == nil
      self.head = Node.new(value)
      self.tail = self.head
    else
      self.tail.next_node = Node.new(value)
      self.tail = self.tail.next_node
    end
  end

  def prepend(value)
    if self.head == nil
      self.head = Node.new(value)
      self.tail = self.head
    else
      temp = Node.new(value)
      temp.next_node = self.head
      self.head = temp
    end
  end

  def insert_at(value, index)
    if self.head == nil
      self.head = Node.new(value)
      self.tail = self.head
      puts "List is empty. Added as only item in list"
    else
      position = 0
      current_node = self.head
      previous_node = nil

      while position < index && current_node.next_node != nil
        previous_node = current_node
        current_node = current_node.next_node
        position += 1
      end

      if position == index
        previous_node.next_node = Node.new(value)
        previous_node.next_node.next_node = current_node
      else
        self.append(value)
        puts "List not long enough to insert at position #{index}"
        puts "Item added at position #{position + 1} instead"
      end
    end
  end

  def remove_at(index)
    if self.head == nil
      puts "List is already empty"
    else
      position = 0
      current_node = self.head
      previous_node = nil

      while position < index && current_node.next_node != nil
        previous_node = current_node
        current_node = current_node.next_node
        position += 1
      end

      if position == index
        if current_node == self.head && current_node == self.tail
          self.head = nil
          self.tail = nil
        else
          previous_node.next_node = current_node.next_node
        end
      else
        puts "No item at position #{index} in list"
      end
    end
  end

  def pop
    if self.head == nil
      puts "List is already empty"
    elsif self.head == self.tail
      self.head = nil
      self.tail = nil
    else
      position = 0
      current_node = self.head

      while position < (self.size - 2)
        current_node = current_node.next_node
        position += 1
      end

      current_node.next_node = nil
      self.tail = current_node
    end
  end

  def size
    size = 0

    if self.head == nil
      return size
    else
      size += 1
      current_node = self.head

      while current_node.next_node != nil
        current_node = current_node.next_node
        size += 1
      end
      return size
    end
  end

  def at(index)
    position = 0

    if self.head == nil
      return nil
    else
      current_node = self.head

      while position < index
        current_node = current_node.next_node
        position += 1
      end
      return current_node
    end
  end

  def contains?(value)
    if self.head == nil
      return false
    else
      current_node = self.head
      
      while current_node.value != value && current_node.next_node != nil
        current_node = current_node.next_node
      end

      if current_node.value == value
        return true
      else
        return false
      end
    end
  end

  def find(value)
    if self.head == nil
      return nil
    else
      position = 0
      current_node = self.head

      while current_node.value != value && current_node.next_node != nil
        current_node = current_node.next_node
        position += 1
      end

      if current_node.value == value
        return position
      else
        return nil
      end
    end
  end

  def clear
    self.head = nil
    self.tail = nil
  end

  def to_s
    string = ""

    if self.head == nil
      string += "nil"
      return string
    else
      string += "( #{self.head.value} ) -> "
      current_node = self.head

      while current_node.next_node != nil
        current_node = current_node.next_node
        string += "( #{current_node.value} ) -> "
      end
      string += "nil"
      return string
    end
  end
end