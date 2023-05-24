# sabetsuka
Sabetsuka (差別化) makes it easy and painless to differentiate polynomials. The repository was inspired by the [Nokogiri](https://github.com/sparklemotion/nokogiri) gem 


```ruby

# Example usage:
polynomial = Polynomial.new("3x^3 + 4x^2 + 5x + 4")
derivative = polynomial.differentiate

puts "Polynomial: #{polynomial.expression}"
puts "Derivative: #{derivative.expression}"
```
