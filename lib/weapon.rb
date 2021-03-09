RULES = {
  rock: :scissors,
  paper: :rock,
  scissors: :paper
}

IMAGE = {
  :rock => "https://i.pinimg.com/originals/49/a6/e9/49a6e9c659b49cf1f90909f79efde5b6.jpg",
  :paper => "https://cdn4.vectorstock.com/i/1000x1000/64/13/cartoon-notebook-paper-holding-a-pencil-vector-1986413.jpg",
  :scissors => "https://i.pinimg.com/originals/de/d7/34/ded734058afb08d065830124d3d97a54.png"
}

class Weapon

  attr_reader :type, :image

  def initialize(type)
    @type = type.to_sym
    @image = IMAGE[type]
  end

  def beats?(opponent_weapon)
    RULES[type] == opponent_weapon.type
  end

end
