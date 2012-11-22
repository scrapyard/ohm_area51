require 'ohm'
require 'ohm/contrib'

class Product < Ohm::Model
  include Ohm::Timestamps
  include Ohm::DataTypes

  attribute :amount, Type::Decimal
  attribute :description
  attribute :url
  attribute :poster_email
  attribute :slug

  attribute :ratings, Type::Array
end
