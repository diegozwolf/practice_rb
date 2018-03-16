require 'pry'

def ac_action?(state,temp)
    desire_temp = 25
    if state == "functional" && temp > desire_temp
     "Turn on the A/C Please"
     elsif state == "non-functional" && temp > desire_temp
     "Fix the A/C now!  It's hot!"
     elsif state == "non-functional" && temp < desire_temp
          "Fix the A/C whenever you have the chance...  It's cool..."  
      else
          "The A/C its ok"
    end
end



# def drinking_age?(age)
#     if age < 18
#         puts "You can't drink" 
#         false
#     else
#         puts "drink a beer my friend"
#         true
#     end
# end

# sev=drinking_age?(27)
# old=drinking_age?(17)




binding.pry