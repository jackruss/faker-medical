# Faker::Medical

You can generate the following data elements:

## Usage
### Faker::DEA
* `Faker::DEA.dea` - generates a DEA Number

### Faker::NPI
```ruby
# Generates a 10-digit National Provider Identifier
Faker::NPI.npi # => "7419588454"

Faker::NPI.valid?("1490626178") # => false
```

### Faker::Patient
```ruby
# Generates a patient gender (M|F)
Faker::Patient.gender
```

### Faker::SSN
* `Faker::SSN.en_ssn` - generates a Social Security Number

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
