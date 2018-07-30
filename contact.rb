gem 'activerecord', '=4.2.7'
require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'crm.sqlite3')

class Contact < ActiveRecord::Base
  field :first_name, as: :string
  field :last_name, as: :string
  field :email, as: :string
  field :note, as: :text
  def full_name
    return "#{first_name} #{last_name}"
  end
end

Contact.auto_upgrade!


# gem 'activerecord', '=4.2.7'
# require 'active_record'
# require 'mini_record'

# ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'crm.sqlite3')

# class Contact
# ...
# end

# class Contact

#   @@contact = []
#   @@id = 1

#   # getters (*get* the value of an attribute)
#   def email
#     @email
#   end

#   # setter (*set* the value of an attribute)
#   def note=(note)
#     @note = note
#   end

#   # This method should initialize the contact's attributes
#   def initialize(first_name, last_name, email, note)
#     @first_name = first_name
#     @last_name = last_name
#     @email = email
#     @note = note
#     @id = @@id
#     @@id += 1 # this way the next contact will get a different id
#   end

#   # This method should call the initializer,
#   # store the newly created contact, and then return it
#   def self.create(first_name, last_name, email, notes = 'N/A')
#     new_contact = Contact.new(first_name, last_name, email, note)
#     @@contact << new_contact
#     return new_contact
#   end

#   # This method should return all of the existing contacts
#   def self.all
#     return @@contacts
#   end

#   # This method should accept an id as an argument
#   # and return the contact who has that id
#   def self.find(id)
#     @@contacts.each do |contact|
#       if contact.id == id
#         return contact
#       else
#         puts "ERROR: does not exist"
#       end
#   end

#   # This method should allow you to specify
#   # 1. which of the contact's attributes you want to update
#   # 2. the new value for that attribute
#   # and then make the appropriate change to the contact
#   def self.update(id, attribute, new_info)
#     @@contact.each do |contact|
#       if contact.id == id
#         if attribute = "first name"
#           @first_name = new_info
#           contact.first_name = new_info
#           return contacts
#         end
#       end
#     end
#   end

#   # This method should work similarly to the find method above
#   # but it should allow you to search for a contact using attributes other than id
#   # by specifying both the name of the attribute and the value
#   # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
#   def self.find_by(user_input)
#     @@contacts.each.do |contact|
#       if contact.email == user_input
#         return contact
#       elsif contact.last_name == user_input
#         return contact
#       end
#     end
#   end


#   # This method should delete all of the contacts
#   def self.delete_all
#     return @@contact.clear
#   end

#   def full_name
#     "#{first_name} #{last_name}"
#   end

#   # This method should delete the contact
#   # HINT: Check the Array class docs for built-in methods that might be useful here
#   def delete
#     @@contacts.delete(self)
#   end

#   # Feel free to add other methods here, if you need them.

# end

# contact = Contact.new(
#   'Betty',
#   'Maker',
#   'bettymakes@gmail.com',
#   'Loves Pokemon'
# )

# puts contact.email # => 'bettymakes@gmail.com'
# contact.note = 'Loves HTML & CSS'
