class PipeContacts < Contacts
  attr_accessor :last_name, :first_name, :middle_initial, :gender, :favorite_color, :birth_date
  
  def initialize(last_name, first_name, middle_initial, gender, favorite_color, birth_date)
    @last_name = last_name
    @first_name = first_name
    @middle_initial = middle_initial
    gender == "M" ? @gender = "Male" : @gender = "Female"
    @favorite_color = favorite_color
    @birth_date = Date.strptime(birth_date.gsub(/[-]/, '/'), '%m/%d/%Y')
    @@all << self
  end
end