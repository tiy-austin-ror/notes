# Abstract Type
# Data Structures

# Stack (LiFo)
# Examples of stack:
#  - $PATH
#  - Ruby method lookup
#  - The 'stack trace' you see when an error occurs
# Stacks respond to:
#  - push (add to end of collection)
#  - pop  (remove from end of collection)
#  - length
my_stack = []            # => []
my_stack.push('Travis')  # => ["Travis"]
my_stack.push('Karly')   # => ["Travis", "Karly"]
my_stack.push('Justin')  # => ["Travis", "Karly", "Justin"]
my_stack.push('Ben')     # => ["Travis", "Karly", "Justin", "Ben"]
my_stack.length          # => 4

my_stack.pop     # => "Ben"
my_stack.pop     # => "Justin"
my_stack.pop     # => "Karly"
my_stack.pop     # => "Travis"
my_stack.pop     # => nil
my_stack.length  # => 0

# Queue (FiFo)
# Examples of queue:
#  - waiting list for a meetup
#  - email sending system
#  - alert notifications
#  - Drive-thru at a burger joint
# Queue respond to:
#  - shift (remove first from collection)
#  - push  (add to end of collection)
#  - length
waitlist = []           # => []
waitlist.push('Sarah')  # => ["Sarah"]
waitlist.push('Sally')  # => ["Sarah", "Sally"]
waitlist.push('Jo')     # => ["Sarah", "Sally", "Jo"]
waitlist.push('Brian')  # => ["Sarah", "Sally", "Jo", "Brian"]
waitlist.length         # => 4

waitlist.shift  # => "Sarah"
waitlist.shift  # => "Sally"
waitlist.shift  # => "Jo"
waitlist.shift  # => "Brian"
waitlist.shift  # => nil
waitlist.length

