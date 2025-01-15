module Debugattava
  def tila
    instance_variables.each do |x|
      puts "#{x} #{instance_variable_get(x)}"
    end
  end
end