class Pino
  include Enumerable
  def initialize()
    @pino = []
  end

  def push(x)
    @pino << x
  end

  def pop
    if @pino.empty?
      raise RuntimeError
    else
      @pino.pop
    end
  end

  def each
    @pino.each {|x| yield x}
  end
end