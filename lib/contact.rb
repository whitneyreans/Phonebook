class Contact
  @@contacts = []
  attr_reader(:name, :numbers, :id)

  define_method(:initialize) do |name|
    @name = name
    @numbers = []
    @id = @@contacts.length().+(1)
  end

  define_method(:id) do
    @id
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

  define_singleton_method(:list_names) do
    @@contacts
  end

  define_method(:add_number) do |number|
    @numbers.push(number)
  end

  define_singleton_method(:find) do |id|
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.id().eql?(id.to_i)
        found_contact = contact
      end
    end
    found_contact
  end
end
