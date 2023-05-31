# sabetsuka

Sabetsuka (差別化) makes it easy and painless to differentiate polynomials. 

The repository was inspired by the [Nokogiri](https://github.com/sparklemotion/nokogiri) gem 

### Example format
The summand format: `3x^5`, `5y`, `7`

The polynomial format: `3x + 5y + 6`, `5x - 2`, `-3y^2 - 5`

### Example usage

```ruby
polynomial = Sabetsuka::Polynomial.new("3x^3 + 4x^2 + 5x + 4", "x")
derivative = polynomial.differentiate

puts "Polynomial: #{polynomial.to_s}"
puts "Derivative: #{derivative.to_s}"

# Output:
# Polynomial: 3x^3 + 4x^2 + 5x + 4
# Derivative: 9x^2 + 8x + 5
```
