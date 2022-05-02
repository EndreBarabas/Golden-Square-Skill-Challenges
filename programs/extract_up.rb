def extract_uppercase(string)
  if string == "" || string == " "
    fail "Invalid input"
  else
    str_arr = string.split(" ")
    return_arr = []
    str_arr.each do |x|
    return_arr.push(x) if x.upcase == x
    end
  return return_arr
  end
end