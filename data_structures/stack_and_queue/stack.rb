class Stack
  def initialize
    @data = []
  end

  def push(datum)
    @data << datum
  end

  def <<(datum)
    push(datum)
  end

  def pop
    @data.pop
  end

  def read
    @data.last
  end
end
