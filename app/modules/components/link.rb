# typed: strict

module Components
  class Link < ViewComponent::Base
    extend T::Sig

    sig { params(path: String, data: T::Hash[Symbol, Symbol]).void }
    def initialize(path:, data: {})
      @path = path
      @data = data
    end
  end
end
