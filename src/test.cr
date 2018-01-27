require "./stopwords"

test = "This is a test string with the types of words that should get removed"
tokens = test.split
s = SnowballFilter.new("en")
t = s.filter tokens
puts t