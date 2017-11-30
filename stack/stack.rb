class Stack

  def initialize(size)
    @max_size = size
    @stack_array = []

    # location of the top most item of the stack
    # initialized at -1 because there are no items in the stack when it is created
    @top = -1
  end

  def push(item)
    # We increment top because we add a new item to our stack
    # top now refers to the position of the item we just added
    if !is_full?
      @top += 1
      @stack_array[@top] = item
    else
      raise 'Out of bounds exception. Stack already full!'
    end
  end

  def pop
    if is_empty?
      raise 'Stack already empty!'
    else
      old_top = @top

      # We decrease top by 1 because we just removed an item
      # our top most item is now the item under the item we just removed
      @top -= 1

      # We return the item we just removed
      @stack_array[old_top]
    end
  end

  def peek
    @stack_array[@top]
  end

  def is_empty?
    @top == -1
  end

  def is_full?
    @max_size - 1 == @top
  end

end