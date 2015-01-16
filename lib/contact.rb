class Contact
  @@contacts = []
  attr_reader(:name, :number)

  define_method(:initialize) do |name, number|
    @name = name
    @number = number
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_method(:add) do
    @@contacts.push(self)
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end
  
end
