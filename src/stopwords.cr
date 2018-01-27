require "./stopwords/*"
require "json"

class SnowballFilter
  @json_file = "data/stopwords-iso.json"
  @stopwords : Array(String)
  @lang : String

  def initialize(lang : String)
    @lang      = lang
    @stopwords = load_json
  end

  def filter(terms : Array)
    terms - @stopwords
  end

  private def load_json : Array
    stopwords = [] of String
    File.open(@json_file, "r") do |file|
      all_langs = JSON.parse(file)
      stopwords = all_langs[@lang].map {|s| s.to_s}
    end
    stopwords
  end
end
