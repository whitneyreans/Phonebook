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

  define_singleton_method(:list_names) do
    names = []
    @@contacts.each() do |entry|
      names.push(entry.name())
    end
    names
  end

  define_method(:show_number) do |name|
    if @name == name
      return @number
    end
  end


end
