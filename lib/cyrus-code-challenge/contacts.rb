require 'date'

class Contacts
  attr_accessor :last_name, :first_name, :gender, :favorite_color, :birth_date

  @@all = []

  def self.all
    @@all
  end

  def initialize(last_name, first_name, gender, favorite_color, birth_date)
    @last_name = last_name
    @first_name = first_name
    @gender = gender
    @favorite_color = favorite_color
    @birth_date = Date.strptime(birth_date, '%m/%d/%Y')
    @@all << self
  end
end
