def make_snippet(string)
  string.length <= 5 ? string : ("#{string[0, 5]}...")
  #string.length <= 5 ? return string : return ("#{string[0,5]}...")
end
