def read_time(string)
  word_count = string.split(" ").length
  return (word_count / 200.to_f).ceil
end

puts read_time("one " * 6533)
