require 'pry'

#you run a site that offers a matching service between vendors selling laptops and customers
#..looking to purchase; you charge a fee to be listed as a vendor
#your site's users must sign in and if they are an admin they are able to make changes to the site

#______________________________________________

#write a function "user_permission" that accepts four parameters: signed_in, admin, paid, and canceled
#if the user doesn't pay their bills or has canceled a deal, show "go away!"
#if the user is signed in and they are an admin, show "you can see see and change all the pages!"
#if you user is signed in but they are not an admin, show "you can see all the pages!"
#if the user is not signed in, show "you can't see any of the pages, please sign in!"
def user_permission(signed_in, admin, paid, cancelled)
  if paid != "yes" || cancelled == "yes"
    puts "Go away!"
  elsif signed_in == "yes" && admin == "yes"
    puts "You can see and change all the pages!"
  elsif signed_in == "yes" && admin != "yes"
    puts "You can see all the pages!"
  else
    puts "You can't see any of the pages, please sign in!"
  end
end

#ask the user if they pay their bills (yes/no)
puts "Do you pay your bills? Please answer yes/no."

#store their answer in a variable
user_paid = gets.strip

#ask the user if they have canceled a deal (yes/no)
puts "Have you cancelled a deal? Please answer yes/no."

#store their answer in a variable
user_cancelled = gets.strip

#ask the user if they are an admin (yes/no)
puts "Are you an admin? Please answer yes/no."

#store their answer in a variable
user_admin = gets.strip

#ask the user if they are signed in (yes/no)
puts "Are you signed in? Please answer yes/no."

#store their answer in a variable
user_signed_in = gets.strip

user_permission(user_signed_in, user_admin, user_paid, user_cancelled)
