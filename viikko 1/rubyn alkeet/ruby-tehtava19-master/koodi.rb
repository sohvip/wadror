def tulosta(x)
  if block_given?
    puts yield x
  else
    puts x
  end
end