require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


spongebob = Student.new(first_name: "Spongebob")
patrick= Student.new(first_name: "Patrick")
 
puff= Instructor.new(name: "Ms.Puff")
krabs= Instructor.new(name: "Mr.Krabs")
 
no_crashing = spongebob.add_boating_test(test_name: "Don't Crash 101", test_status: "pending", instructor: puff)
power_steering_failure = patrick.add_boating_test(test_name: "Power Steering 202", test_status: "failed", instructor: puff)
power_steering_pass = patrick.add_boating_test(test_name: "Power Steering 201", test_status: "passed", instructor: krabs)
another_one = BoatingTest.new(name: "Another one", instructor: krabs, student: spongebob, status: "pending")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line

