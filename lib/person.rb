require 'pry'# your code goes here
class Person
  attr_reader :name, :happiness
  attr_accessor :bank_account

  def initialize (name)
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    @name = name
  end

  def hygiene=(hygiene)
    @hygiene = hygiene
    @hygiene = 10 if hygiene > 10
    @hygiene = 0 if hygiene < 0
  end


  def hygiene
    @hygiene
  end


  def happiness=(happy)
    @happiness = happy
    @happiness = 10 if happy > 10
    @happiness = 0 if happy < 0
  end


  def clean?
    @hygiene > 7
  end
  def happy?
    @happiness > 7
  end
  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end
  def take_bath
    self.hygiene = @hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  def work_out
    self.happiness = @happiness + 2
    self.hygiene = @hygiene -3
#    if @hygiene > 3
#      @hygiene -= 3
#    else
#      @hygiene = 0
#    end
    "♪ another one bites the dust ♫"
  end
  def call_friend(name)
    self.happiness = @happiness + 3
    name.happiness += 3
    "Hi #{name.name}! It's #{@name}. How are you?"
  end
  def start_conversation(name, topic)
    if topic == "politics"
      self.happiness -= 2
      name.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      name.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
