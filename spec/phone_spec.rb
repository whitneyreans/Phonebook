require('rspec')
require('contact')

describe(Phone) do
  #  before() do
  #   Phone.clear()

  describe("#number") do
    it("lists the number") do
      new_phone = Phone.new("566-5555", "cell")
      expect(new_phone.number()).to(eq("566-5555"))
    end
  end
end
