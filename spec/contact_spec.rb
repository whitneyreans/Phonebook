require('rspec')
require('contact')

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

end
