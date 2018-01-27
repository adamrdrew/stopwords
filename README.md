# stopwords

A multi-language stopword removal library for Crystal based on world lists from the Stopwords ISO project.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  stopwords:
    github: adamrdrew/stopwords
```

## Usage

```crystal
require "stopwords"

filter = Stopwords.new("en")
test = "This is a test string with the types of words that should get removed"
filter.filter source.split
# => ["This", "string", "types", "removed"]
```
This library suports many languages thanks to [Stopwords ISO](https://github.com/stopwords-iso/stopwords-iso). Simply specify a valid ISO 639-1 language code when creating a Stopwords instance.

```crystal

fr = Stopwords.new("fr")
```