def keskiarvo(a)
  n = a.length
  summa = a.inject(0){|tulos, x| tulos + x }
  summa.to_f / n
end
