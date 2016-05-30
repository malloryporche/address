require "./phone_number"
require "./address"

class Contact
  attr_writer :first_name, :middle_name, :last_name
  attr_reader :phone_numbers
  
  def initialize
    @phone_numbers = []
  end
  
  def first_name
    @first_name
  end
  
  def middle_name
    @middle_name
  end
  
  def last_name
    @last_name
  end
  
  def first_last
    first_last = @first_name
    first_last += " "
    first_last += @last_name
  end
  
  def full_name
    full_name = first_name
    full_name += ' '
    full_name += middle_name
    full_name += ' '
    full_name += last_name
  end
  
  def last_first
    last_first = last_name
    last_first += ', '
    last_first += first_name
    last_first += ' '
    last_first += middle_name[0]
    last_first += '.'
  end
  
  def full_name 
    full_name = first_name
    full_name += " "
    full_name += middle_name
    full_name += " "
    full_name += last_name
  end
  
  def add_phone_number(kind, number)
    phone_number = PhoneNumber.new
    phone_number.kind = kind
    phone_number.number = number
    phone_numbers.push(phone_number)
  end
  
  def print_phone_number
    puts "Phone Numbers"
    phone_numbers.each { |phone_number| puts phone_number }
  end
  
end

mallory = Contact.new
mallory.first_name = "Mallory"
mallory.last_name = "Burke"
mallory.middle_name = "Porche"
mallory.add_phone_number("Home", "987-654-3211")
mallory.add_phone_number("Work", "987-654-3211")
mallory.add_phone_number("Mobile", "987-654-3211")


puts("***OUTPUT***\n")
puts(mallory)
puts mallory.last_first
puts mallory.full_name
puts mallory.first_name + " " + mallory.last_name
puts mallory.phone_numbers