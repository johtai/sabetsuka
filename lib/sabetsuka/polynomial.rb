module Sabetsuka
  class Polynomial
    attr_accessor :expression

    def initialize(expression)
      @expression = expression
    end

    def differentiate
      @expression.sub! '- ', '+ -'
      terms = @expression.split('+')
      derivative_terms = []

      terms.each do |term|
        sign, coefficient, variable, exponent = parse_term(term)

        # puts sign.to_s + coefficient.to_s + variable.to_s + '^' + exponent.to_s

        next unless exponent > 0 && variable != 'none'

        derivative_coefficient = sign * coefficient * exponent
        derivative_exponent = exponent - 1
        derivative_terms << format_term(derivative_coefficient, derivative_exponent)
      end

      derivative_expression = derivative_terms.empty? ? "0" : derivative_terms.join(' + ')
      derivative_expression.sub! '+ -', '- '
      Polynomial.new(derivative_expression)
    end

    def to_s
      @expression
    end

    private

    def parse_term(term)
      term.strip!
      matches = term.match(/(-)?([\d\-]*)([a-zA-Z]*)(\^(\d+))?/)

      sign = matches[1].nil? ? 1 : -1
      coefficient = matches[2].nil? ? 1 : matches[2].to_i
      variable = matches[3].empty? ? 'none' : matches[3].to_s
      exponent = matches[5].nil? ? 1 : matches[5].to_i

      [sign, coefficient, variable, exponent]
    end

    def format_term(coefficient, exponent)
      term = coefficient.to_s
      # puts 'before_format: ' + term
      term += 'x' if exponent > 0
      term += "^#{exponent}" if exponent > 1

      term
    end
  end
end