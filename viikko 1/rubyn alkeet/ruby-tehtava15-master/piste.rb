class Piste
  def initialize(x,y)
    @x = x
    @y = y
  end

  def siirra(dx, dy)
    @x += dx
    @y += dy
  end

  def etaisyys_origosta
    Math.sqrt(@x*@x + @y*@y)
  end

  def to_s
    "(#{@x}, #{@y})"
  end
end
