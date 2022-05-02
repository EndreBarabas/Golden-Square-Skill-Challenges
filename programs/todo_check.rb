def todo_check(string, element)
  if string == "" || string == " " || element == "" || element == " "
    fail("Not a valid input.")
  else
    string.include?(element) ? true : false
  end
end