class Queue
  def initialize
    @data = []
  end

  def enqueue(datum)
    @data << datum
  end

  def dequeue
    @data.shift
  end

  def read
    @data.first
  end
end
