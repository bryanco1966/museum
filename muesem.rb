class Muesem
  attr_reader :name,
              :exhibits

  def initialize(name)
    @name     = name
    @exhibits = []
  end

  def add_exhibit(name, cost)
    exhibit = [name, cost]
    @exhibits << exhibit
  end

end
