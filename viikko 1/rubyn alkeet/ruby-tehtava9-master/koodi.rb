def esiintymat(a)
  hash = {}
  a.each do |x|
    hash[x] = a.count(x)
  end
  return hash
end

# a.tally