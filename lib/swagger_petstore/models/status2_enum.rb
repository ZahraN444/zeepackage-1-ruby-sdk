# swagger_petstore
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module SwaggerPetstore
  # status2.
  class Status2Enum
    STATUS2_ENUM = [
      # TODO: Write general description for AVAILABLE
      AVAILABLE = 'available'.freeze,

      # TODO: Write general description for PENDING
      PENDING = 'pending'.freeze,

      # TODO: Write general description for SOLD
      SOLD = 'sold'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      STATUS2_ENUM.include?(value)
    end
  end
end
