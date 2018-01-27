require "./spec_helper"

describe Stopwords do
  it "filters English" do
    test = "This is a test string with the types of words that should get removed"
    result = ["This", "string", "types", "removed"]
    tokens = test.split
    s = SnowballFilter.new("en")
    t = s.filter tokens
    t.should eq(result)
  end

  it "filters French" do
    test = "anterieures I apres don't après know as French assez"
    result = ["I", "don't", "know", "French"]
    tokens = test.split
    s = SnowballFilter.new("fr")
    t = s.filter tokens
    t.should eq(result)
  end

end
