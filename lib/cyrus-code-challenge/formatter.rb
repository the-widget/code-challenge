module Formatter

  def normalize(content)    
    dashed = content.gsub(/[-]/, "/")
    contact = dashed.gsub(/[,]|[|]/, "").split(" ")
    delete_middle_name(contact)
    switch_dates(contact)
    spell_gender(contact)
    contact
  end

  private
  
  def delete_middle_name(content)
    if content.length == 6 
      content.delete_at(2)
    end
  end

  def switch_dates(content)
    if content[3].include?("/")
      content[3], content[4] = content[4], content[3]
    end
  end

  def spell_gender(contact)
    if contact[2] == "M"
      contact[2] = "Male"
    elsif contact[2] == "F"
      contact[2] = "Female"
    else
      contact
    end
  end
end
