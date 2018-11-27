# Converting between strings and symbols is a snap

:tim.to_s
# ==> "tim"

"tim".to_sym
# ==> :tim

# Creating an array to iterate through
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# An empty array aka bucket to dump/push our strings into once
# they have been converted into a symbol
symbols = []

strings.each do |s|
    symbols.push(s.to_sym)
end

# prints out each symbols in the array
# ==> [:HTML, :CSS, :JavaScript, :Python, :Ruby]
print symbols