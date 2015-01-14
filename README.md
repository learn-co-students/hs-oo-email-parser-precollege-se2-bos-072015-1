---
  tags: string parsing, oo, initializers, kids
  languages: ruby
  level: 2
  type: todo
---

## Object Oriented Email Parser

### Description

You will be writing an `EmailParser` class that gets initialized with a string of emails.
Your job is to parse those emails into a useful array using an instance method,
`parse`.

I should be able to do this:

```ruby
emails = "john@doe.com, person@somewhere.org"

parser = EmailParser.new

parser.parse(emails)
# => ["john@doe.com", "person@somewhere.org"]
```

The `parse` method should take in a list of emails either separated with spaces, commas or semicolons. It should, additionally, only return unique emails.

### Instructions

Get all the tests to pass by implementing an "EmailParser" class.

Run the test suite using the `rspec` command.