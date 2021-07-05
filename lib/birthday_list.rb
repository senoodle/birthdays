
class Birthdays



  def initialize 
    @birthdays = []
  end


  def store(name, dob)
    @birthdays << { name: name, dob: dob}
  end

  def display_list
    @birthdays.each do |birthday|
      puts "#{birthday[:name]}: #{birthday[:dob]}"
    end
  end


end
