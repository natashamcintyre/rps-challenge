class Player
  attr_reader :name, :score, :image

  image = {
    :rock => "https://i.pinimg.com/originals/49/a6/e9/49a6e9c659b49cf1f90909f79efde5b6.jpg",
    :paper => "https://cdn4.vectorstock.com/i/1000x1000/64/13/cartoon-notebook-paper-holding-a-pencil-vector-1986413.jpg",
    :scissors => "https://i.pinimg.com/originals/de/d7/34/ded734058afb08d065830124d3d97a54.png"
  }

  def initialize(name)
    @name = name
    @score = 0
  end

  def point
    @score += 1
  end

  def chose(choice)
    @image = image[choice_to_sym]
  end

end
