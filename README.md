# Faker::Medical

You can generate the following data elements:

### Faker::Medical::DEA
Generate a [DEA Number](http://en.wikipedia.org/wiki/DEA_number)
```ruby
Faker::Dea.dea
# => "AS3555565"
```

### Faker::Medical::NPI
Generates a 10-digit [National Provider Identifier](http://en.wikipedia.org/wiki/National_Provider_Identifier)
```ruby
Faker::Npi.npi
# => "7419588454"

Faker::Npi.check_digits?("1490626178")
# => false
```

### Faker::Medical::Patient
Generate a patient gender - M or F:
```ruby
Faker::Patient.gender
# => "F"
```

### Faker::Medical::SSN
Generates a Social Security Number
```ruby
Faker::Ssn.en_ssn
# => "816-10-6425"
```

## Note on Patches/Pull Requests

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with Rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2009 Tom & Russell. See [LICENSE](LICENSE) for details.
