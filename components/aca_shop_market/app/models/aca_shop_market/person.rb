module AcaShopMarket
  class Person
    include Mongoid::Document
    include Mongoid::Timestamps

    field :first_name, type: String
    field :middle_name, type: String
    field :last_name, type: String

    embeds_many :addresses, cascade_callbacks: true, validate: true


    validates_presence_of :first_name, :last_name

  end
end
