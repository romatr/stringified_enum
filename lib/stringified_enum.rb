require "active_support/concern"
require "stringified_enum/version"

module StringifiedEnum
  extend ActiveSupport::Concern

  module ClassMethods
    def stringified_enum(definitions)
      column_name, enum_fields = definitions.first
      definitions[column_name] = enum_fields.map { |field| [field.to_sym, field.to_s] }.to_h
      __send__(:enum, definitions)
    end
  end
end
