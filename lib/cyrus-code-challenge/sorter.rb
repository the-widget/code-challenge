module Sorter
  
  def sorted_by_ascending_gender_and_last_name
    Contacts.all.sort_by{|contact| [contact.gender, contact.last_name]}
  end

  def sorted_by_ascending_birthdate_and_last_name
    Contacts.all.sort_by{|contact| [contact.birth_date, contact.last_name]}
  end

  def sorted_by_last_name_descending
    Contacts.all.sort{|a,b| b.last_name <=> a.last_name}
  end
end
