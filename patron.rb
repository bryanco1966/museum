class Patron
attr_reader :name,
            :interests

  def initialize(name)
    @name      = name
    @interests = []
  end

  def add_interests(phrase)
    @interest << phrase
  end

end
