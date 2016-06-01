require "./phone_number"
require "./address"

class Contact
  attr_writer :first_name, :middle_name, :last_name
  attr_reader :phone_numbers, :addresses
  
  def initialize
    @phone_numbers = []
    @addresses = []
  end
  
  def add_phone_number(kind, number)
    phone_number = PhoneNumber.new
    phone_number.kind = kind
    phone_number.number = number
    phone_numbers.push(phone_number)
  end
  
  def add_address(kind, street_1, street_2, city, state, postal_code)
    address = Address.new
    address.kind = kind
    address.street_1 = street_1
    address.street_2 = street_2
    address.city = city
    address.state = state
    address.postal_code = postal_code
    addresses.push(address)
  end

  def print_phone_number
    puts "Phone Numbers"
    phone_numbers.each { |phone_number| puts phone_number }
  end
  
  def print_addresses
    puts "Addresses"
    addresses.each { |address| puts address.to_s('short') }
  end
end
