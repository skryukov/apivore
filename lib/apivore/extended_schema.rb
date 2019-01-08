require 'apivore/extended_type_attribute'

module Apivore
  class ExtendedSchema < JSON::Schema::Draft4

    def initialize
      super
      @attributes['type'] = Apivore::ExtendedTypeAttribute
      @uri = URI.parse('http://tempuri.org/apivore/extended_schema')
      @names = ['http://tempuri.org/apivore/extended_schema']
    end

    JSON::Validator.register_validator(self.new)
    JSON::Validator.register_default_validator(self.new)
  end
end