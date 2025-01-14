def luokittelu(a)
  neg = a.select{|x| x < 0}.sort
  pos = a.select{|x| x > 0}.sort
  par = a.select{|x| x % 2 == 0}.sort
  ton = a.reject{|x| x % 2 == 0}.sort
  sum = a.inject(0, :+)
  hash = { negatiivinen: neg, positiivinen: pos, parillinen: par,
           pariton: ton, summa: sum }
end