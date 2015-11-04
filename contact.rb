class Contact
	attr_reader :id
	attr_accessor :first_name, :last_name, :email, :notes

	@@contacts = []
	@@id = 1

	def initialize(first_name, last_name, email, notes)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@notes = notes

		@id = @@id
		@@id += 1

	end

	def self.create(first_name, last_name, email, notes)
		new_contact = Contact.new(first_name, last_name, email, notes)
		@@contacts << new_contact
	end

	# 	# 1. Ask for a contact ID, then ask for confimation
	# 	# 2. Get a contact based on the ID, from @@contacts array
	# 	#    Loop through array, compare ID
	# 	# 3. Call an instance method on that contact
	# end

	def self.find(id_to_look_for)
		@@contacts.find { |contact| contact.id == id_to_look_for }
	end

	def self.all
		@@contacts
	end

	def full_name
		"#{first_name} #{last_name}"
	end

	def self.delete(id_found)
		@@contacts.delete do |contact|
		id_found.to_i == contact.id
		end
	end

	# def self.modify_first(first_name)
	# 	@first_name.delete { |contact| contact.id ==}
	# end

	def self.display_attribute(attribute)
		attribute_array = []
		case attribute
			when "fullname" || "full name"
			  @@contacts.each do |contact|
				attrubute_array << contact.full_name
			end
		    when "first name"
		      @@contacts.each do |contact|
		        attribute_array << contact.first_name
		      end
		    when "last name"
		      @@contacts.each do |contact|
		        attribute_array << contact.last_name
		      end
		    when "email"
		      @@contacts.each do |contact|
		        attribute_array << contact.email
		      end
    	end
    	attribute_array
    end

 end


