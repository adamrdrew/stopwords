require "./spec_helper"

describe Stopwords do
  it "filters english token" do
    test = "This is a test string with the types of words that should get removed"
    result = ["This", "string", "types", "removed"]
    tokens = test.split
    s = SnowballFilter.new("en")
    t = s.filter tokens
    t.should eq(result)
  end
end
