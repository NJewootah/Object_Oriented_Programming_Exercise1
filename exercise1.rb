class Person
attr_accessor :fname,:sname,:dob,:fullname
attr_reader :emails,:phone_numbers

  def initialize(fname,sname,dob = nil)
    @dob = dob
    @fullname = fname + ' ' + sname
    @emails = []
    @phone_numbers = []
  end

  def add_email(email)
    @emails << email 
  end

  def add_phone(phone)
    @phone_numbers << phone
  end

  def remove_email(email)
    @emails.delete(email)
  end

  def remove_phone(phone)
    @phone_numbers.delete(phone)
  end

  def to_s
    if @dob != nil
      puts "#{@fullname} was born on #{@dob}.His email addresses are 
      #{@emails}. His phone numbers are #{@phone_numbers}"
    else
      puts "The email addresses of #{@fullname} are #{@emails}. 
      His phone numbers are #{@phone_numbers}"
    end  
  end

  def list_array(type)
    type.each do |i|
      puts i
  end
end

  def print_details()
    puts "#{@fullname}\n"
    puts "--------------\n"
    if @dob != nil
      puts "DOB: #{@dob}\n\n"
    end
    puts "Email Addresses:\n"
    puts list_array(@emails)
    puts "\nPhone Numbers:\n"
    puts list_array(@phone_numbers)
  end

end


p1 = Person.new('Nini','Jewootah','11 October 1991')

p1.add_email('njewootah@yahoo.com')
p1.add_email('nini@yahoo.com')
p1.remove_email('njewootah@yahoo.com')

p1.add_phone('02086414175')
p1.add_phone('07533948131')
p1.remove_phone('02086414175')

puts p1.to_s
p1.print_details()


class FamilyMember < Person
  attr_reader :relationship

  def initialize(fname,sname,relationship,dob = nil)
    @relationship = relationship
    super
  end
end

class AddressBook
  def initialize
    @contacts = []
  end

  def add(person)
    if person.is_a?Person
      @contacts << person
    else
      puts "Please use an object of Person"
    end
  end

end



