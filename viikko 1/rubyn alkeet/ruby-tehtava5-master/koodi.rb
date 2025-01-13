def puuttuva(a)
  n = a.size
  n.times do |i|
    found = a.include? i
    return i if not found
  end
end
