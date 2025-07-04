# typed: strict

module Components
  class Button < ViewComponent::Base
    extend T::Sig

    sig { params(name: String, type: Symbol, data: T::Hash[Symbol, Symbol]).void }
    def initialize(name:, type:, data: {})
      @name = name
      @type = type
      @data = data
    end
  end
end
