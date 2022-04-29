def check_grammar(string)
    sentence_marks = ["?", ".", "!"]
    fail "That is not a sentence." if string.empty?
    if string[0,1] == string[0,1].upcase && sentence_marks.include?(string[-1])
        return true
    else
        return false
    end
end