require 'mail'

class EmailSender
  attr_reader :outputs, :receiver

  def initialize(outputs, receiver)
    @outputs = outputs
    @receiver = receiver
  end

  def formatted_email
    email_message = ""
    outputs.each_with_index do |output, i|
      email_message << "<br>Output #{i+1}:<br>"
      output.each do |contact_info|
        email_message << contact_info + "<br>"
      end
    end
    email_message
  end

  def send_email(content = formatted_email, receiver = @receiver)
    options = {
      :address              => "smtp.gmail.com",
      :port                 => 587,
      :domain               => 'gmail.com',
      :user_name            => 'brennenawana108ny@gmail.com',
      :password             => ENV['PASSWORD'],
      :authentication       => 'plain',
      :enable_starttls_auto => true
    }

    Mail.defaults do
      delivery_method :smtp, options
    end
  
    Mail.deliver do
      to      'brennen.awana@gmail.com'
      from    "#{receiver}"
      subject 'testing MailGem5'
      html_part do 
        content_type 'text/html; charset=UTF-8'
        body "<p>#{content}</p>"
      end
    end
  end
  

end







