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
    new_contact = Contact.new("Santa", "655-5555")
    new_contact.add()
    expect(Contact.all()).to(eq([new_contact]))
    end
  end



   describe(".clear") do
     it("Erases all data in the phonebook") do
       expect(Contact.clear()).to(eq([]))
     end
   end

   describe(".list_names") do
     it("Lists the names of contacts in the phonebook") do
       new_contact = Contact.new("Santa", "655-5555")
       new_contact.add()
       new_contact2 = Contact.new("God", "655-5559")
       new_contact2.add()
       new_contact3 = Contact.new("Albert Einstein", "655-6666")
       new_contact3.add()
       expect(Contact.list_names()).to(eq(["Santa", "God", "Albert Einstein"]))
     end
   end

   describe("#show_number") do
    it("Shows the number for a certain name.") do
     new_contact = Contact.new("Santa", "655-5555")
     new_contact.add()
     new_contact2 = Contact.new("God", "655-5559")
     new_contact2.add()
     new_contact3 = Contact.new("Albert Einstein", "655-6666")
     new_contact3.add()
     expect(new_contact2.show_number("God")).to(eq("655-5559"))
    end
  end

end
