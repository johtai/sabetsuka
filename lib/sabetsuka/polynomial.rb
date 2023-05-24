module Sabetsuka
  class Polynomial
    attr_accessor :expression

    def initialize(expression)
      @expression = expression
    end

    def differentiate
      terms = @expression.split('+')
      derivative_terms = []

      terms.each do |term|
        coefficient, variable, exponent = parse_term(term)

        puts variable

        next unless exponent > 0 && variable != 'none'

        derivative_coefficient = coefficient * exponent
        derivative_exponent = exponent - 1
        derivative_terms << format_term(derivative_coefficient, derivative_exponent)
      end

      derivative_expression = derivative_terms.join(' + ')
      Polynomial.new(derivative_expression)
    end

    def to_s
      @expression
    end

    private

    def parse_term(term)
      term.strip!
      matches = term.match(/([\d\-]*)([a-zA-Z]*)(\^(\d+))?/)

      coefficient = matches[1].nil? ? 1 : matches[1].to_i
      variable = matches[2].empty? ? 'none' : matches[2].to_s
      exponent = matches[4].nil? ? 1 : matches[4].to_i

      [coefficient, variable, exponent]
    end

    def format_term(coefficient, exponent)
      term = coefficient.abs.to_s
      term += 'x' if exponent > 0
      term += "^#{exponent}" if exponent > 1
      # term.prepend('-') if coefficient.negative?

      term
    end
  end
end
