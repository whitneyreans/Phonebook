class Phone

attr_reader(:number, :type)

  define_method(:initialize) do |number, type|
    @type = type
    @number = number
  end

end
