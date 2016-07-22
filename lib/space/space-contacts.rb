class SpaceContacts < Contacts
  attr_accessor :last_name, :first_name, :middle_initial, :gender, :birth_date, :favorite_color
  
  def initialize(last_name, first_name, middle_initial, gender, birth_date, favorite_color)
    @last_name = last_name
    @first_name = first_name
    @middle_initial = middle_initial
    gender == "M" ? @gender = "Male" : @gender = "Female"
    @birth_date = Date.strptime(birth_date.gsub(/[-]/, '/'), '%m/%d/%Y')
    @favorite_color = favorite_color
    @@all << self
  end
end