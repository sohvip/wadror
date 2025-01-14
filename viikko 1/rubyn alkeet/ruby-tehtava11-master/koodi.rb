def arvojarjestys(a)
  b = a.values.select { |x| x > 0 }
  b.sort
end