#Example of a guard clause

#Trivial Example with type checking
def upcase_string(str)
  return if str.nil?
  return if str.is_a?(Integer)
  return if str.is_a?(Array)
  return if str.is_a?(Hash)
  str.upcase
end

#Same Trivial Example with Duck Typing
def upcase_string(str)
  return unless str.respond_to?(:upcase) #Does str have the method :upcase?
  str.upcase
end

#Difference between type checking and duck typing

# In type checking you ask if a variable is the right type
# Is this variable an instance of Array? Is it an instance of Hash?

# In duck typing you ask if it has the right method
# Does this variable have a method called :upcase?

# Rubists loves duck typing

#Non Trivial Example (I didn't write the user class, its just an example)
def send_user_reminder_notice(user)
  return if user.email.nil?
  return if user.last_reminder.sent_at < one_week_ago
  EmailSender.send_notice_to(user.email)
end
