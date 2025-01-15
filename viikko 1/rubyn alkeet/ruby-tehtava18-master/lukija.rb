require 'date'

class Lukija
  def initialize(file)
    @data = []
    File.foreach(file) do |rivi|
      pvm, tunnit = rivi.split(' ')
      pv, kk, v = pvm.split('.')
      pvm = Date.strptime("#{pv}.#{kk}.20#{v}", '%d.%m.%Y')
      tunnit = tunnit.to_i
      @data << [pvm, tunnit]
    end
  end

  def tilasto
    yht = @data.inject(0) { |tulos, x| tulos + x[1] }
    ka = yht.to_f / @data.length
    a = @data.min_by { |x| x[0]}
    l = @data.max_by { |x| x[0]}
    {
      yhteensa: yht,
      keskiarvo: ka,
      alku: a[0].to_s,
      loppu: l[0].to_s,
    }
  end
end