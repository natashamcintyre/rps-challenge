require 'player.rb'

class Game

  attr_reader :player, :message, :rock_image, :scissors_image, :paper_image

  WEAPON = {
    :rock => Weapon.new("rock"),
    :paper => Weapon.new("paper"),
    :scissors => Weapon.new("scissors")
  }

  def initialize(player)
    @player = Player.new(player)
    @computer = Player.new("Ropas")
    @message = "Okay #{@player}, first to 10! Let's go!"
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.load
    @game
  end

  def rock
    @player_image = @rock_image
    compare("rock", computer_choice)
  end

  def paper
    @player_image = @paper_image
    compare("paper", computer_choice)
  end

  def scissors
    @player_image = @scissors_image
    compare("scissors", computer_choice)
  end

  def computer_choice
    choice = [:rock, :paper, :scissors].sample
    WEAPON[choice]
  end

  def player_wins
    @player.point
    :win
  end

  def computer_wins
    @computer.point
    :lose
  end

  def draw
    :draw
  end

  def end?
    @player.score == 10 || @computer.score == 10
  end

  def play(player1choice, player2choice = computer_choice)
    players_hand = WEAPON[player1choice]
    if players_hand = player2choice
    elsif players_hand.beats?(player2choice)
      player_wins
    else
      computer_wins
    end
  end

end
