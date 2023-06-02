# frozen_string_literal: true

module Sabetsuka
  class EmptyArgumentError < StandardError
    def initialize(message = "Empty polynomial expression or variable")
      super(message)
    end
  end

  class WrongTypeArgumentError < StandardError
    def initialize(message = "Expression and variable must be strings")
      super(message)
    end
  end

  class InvalidSyntaxError < StandardError
    def initialize(message = "Invalid expression syntax")
      super(message)
    end
  end
end