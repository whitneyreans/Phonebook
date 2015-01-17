require('rspec')
require('contact')
require('phone')
require('pry')

describe(Contact) do
  describe(".all") do
    it("Will list all contacts added in the phonebook") do
    expect(Contact.all()).to(eq([]))
    end
  end

  describe("#add") do
    it("Will add the contact into the phonebook") do
    new_contact = Contact.new("Santa")
    new_contact.add()
    expect(Contact.all()).to(eq(["Santa"]))
    end
  end



   describe(".clear") do
     it("Erases all data in the phonebook") do
       expect(Contact.clear()).to(eq([]))
     end
   end

   describe(".list_names") do
     it("Lists the names of contacts in the phonebook") do
       new_contact = Contact.new("Santa")
       new_contact.add()
       new_contact2 = Contact.new("God")
       new_contact2.add()
       new_contact3 = Contact.new("Albert Einstein")
       new_contact3.add()
       expect(Contact.list_names()).to(eq(["Santa", "God", "Albert Einstein"]))
     end
   end

   describe("#add_number") do
     it("Adds a number to the contact") do
       new_contact = Contact.new("Santa")
       new_number = Phone.new("666-6666", "work")
       expect(new_contact.add_number(new_number)).to(eq([new_number]))
     end
   end
 end
