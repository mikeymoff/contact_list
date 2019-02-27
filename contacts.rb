# Build a contact list
# Create a menu that allows a user to select 1) Create a contact 2) View All Contacts 3) Exit
# The menu should loop until the user exits

@contacts = [
    { contact_name: "Doug Smith", contact_num: "801-111-2233" },
    { contact_name: "Dave Smith", contact_num: "801-123-3344" },
    { contact_name: "Steve Smith", contact_num: "801-234-2443" },
    { contact_name: "Greg Smith", contact_num: "801-222-7733" },

]

def menu
    puts "1) Create a new Contact"
    puts "2) View All Contacts"
    puts "3) Remove a Contact"
    puts "4) Exit"
end

def user_input
    menu
   choice = gets.to_i
   case choice
   when 1
    create_contact
   when 2
    view_contacts
   when 3
    remove_contact
   when 4 
    exit 
   else
    puts "Input Error, Please choose from the list above."
   end
   user_input

end

def create_contact
    puts "Ok, let's add a contact. What is the name?"
     add_name = gets.chomp

     puts "Great! And the phone number?"
     add_phone = gets.chomp

     @contacts << { contact_name: "#{add_name}", contact_num: "#{add_phone}" }

     puts "#{add_name} has been added to your contact list."

     user_input
end

def view_contacts

    @contacts.each_with_index { |contact_name, index| puts "#{index + 1}) #{contact_name[:contact_name]} #{contact_name[:contact_num]}" }

end

def remove_contact
    puts "Select a contact to remove"
    view_contacts
    choice = gets.to_i
    if choice > 0 && choice <= @contacts.length
      remove = @contacts.delete_at(choice - 1)
    else
      puts "Invalid Choice"
      remove_item
    end
  end

user_input