require "./piste.rb"

class Piste3d < Piste
  def initialize(x, y, z)
    super(x, y)
    @z = z
  end

  def siirra(dx, dy, dz)
    @x += dx
    @y += dy
    @z += dz
  end
  def etaisyys_origosta
    Math.sqrt(@x*@x + @y*@y + @z*@z)
  end
  def to_s
    "(#{@x}, #{@y}, #{@z})"
  end
end