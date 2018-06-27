class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def fix_range(number)
    if number > 10
      return 10
    elsif number < 0
      return 0
    else
      return number
    end
  end

  def happiness=(new_number)
    @happiness = new_number
    @happiness = fix_range(@happiness)
  end

  def hygiene=(new_number)
    @hygiene = new_number
    @hygiene = fix_range(@hygiene)
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
    self.hygiene=(@hygiene+4)
    # @hygiene = fix_range(@hygiene)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
      self.hygiene=(@hygiene-3)
      self.happiness=(@happiness+2)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness+=3
    friend.happiness+=3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness-=2
      friend.happiness-=2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness+=1
      friend.happiness+=1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
