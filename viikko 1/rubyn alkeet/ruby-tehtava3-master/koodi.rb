def kertoma(a)
  tulos = 1
  a.times do |i|
    tulos *= (a - i)
  end
  return tulos
end
