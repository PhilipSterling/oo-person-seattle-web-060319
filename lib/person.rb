class Person
  attr_reader :name, :hygiene, :happiness
  attr_accessor :bank_account
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  def happiness=(happy)
    if happy > 10
      @happiness = 10
    elsif happy < 0
      @happiness = 0
    else
      @happiness = happy
    end
  end
  def hygiene=(wash)
    if wash > 10
      @hygiene = 10
    elsif wash < 0
      @hygiene = 0
    else
      @hygiene = wash
    end
  end

  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end
  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
   self.hygiene=(@hygiene + 4)
  "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  def work_out
    self.happiness=(@happiness + 2)
    self.hygiene=(@hygiene - 3)
    "♪ another one bites the dust ♫"
  end
  def call_friend(friend)
      self.happiness=(@happiness + 3)
      friend.happiness=(friend.happiness + 3)
      "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness=(@happiness - 2)
      friend.happiness=(friend.happiness - 2)
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness=(@happiness + 1)
      friend.happiness=(friend.happiness + 1)
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

end
