require 'rails_helper'

module AcaShopMarket
  RSpec.describe Person, type: :model do

    # it { should validate_presence_of :first_name }
    # it { should validate_presence_of :last_name }

    let(:first_name) {"Martina"}
    let(:last_name) {"Williams"}
    # let(:ssn) {"657637863"}
    # let(:gender) {"male"}
    let(:address) {FactoryGirl.build(:aca_shop_market_address)}
    let(:valid_params) do
      { first_name: first_name,
        last_name: last_name,
        # ssn: ssn,
        # gender: gender,
        addresses: [address]
      }
    end

    describe ".create", dbclean: :after_each do
      context "with valid arguments" do
        let(:params) {valid_params}
        let(:person) {Person.new(**params)}

        it "should save" do
          expect(person.valid?).to be_truthy
        end

      end
    end

  end
end
