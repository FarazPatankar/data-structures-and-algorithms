class Queue

  def initialize(size)
    @max_size = size
    @queue_array = []
    
    @front = 0 # index of the first element
    @rear = -1 # initialized at -1 because it is an empty array initially
    @number_of_items = 0 # no elements initially
  end

  def insert(item)

    if(@rear == (@max_size -1))
      @rear = -1
    else
      @rear += 1
      @queue_array[@rear] = item
      @number_of_items += 1
    end
  end

  def remove
    old_front = @front

    # If front is equal to max_size
    # that means our queue is empty
    if(@front == @max_size)
      @front = 0
    else
      @front += 1
    end

    @rear -= 1
    @number_of_items += 1

    @queue_array[@front]
  end

  def peek
    @queue_array[@front]
  end

  def is_empty?
    @number_of_items == 0
  end

  def is_full?
    @number_of_items == @max_size
  end

end