# sabetsuka

Sabetsuka (差別化) makes it easy and painless to differentiate polynomials. 

The repository was inspired by the [Nokogiri](https://github.com/sparklemotion/nokogiri) gem 

### Example format
The summand format: `3x^5`, `5y`, `7`

The polynomial format: `3x + 5y + 6`, `5x - 2`, `-3y^2 - 5`

### Example usage

```ruby
polynomial = Polynomial.new("3x^3 + 4x^2 + 5x + 4")
derivative = polynomial.differentiate

puts "Polynomial: #{polynomial.expression}"
puts "Derivative: #{derivative.expression}"
```
