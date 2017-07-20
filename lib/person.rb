# your code goes here
class Person

  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(num)
    if num > 10
      @happiness = 10
    elsif num < 0
      @happiness = 0
    else
      @happiness = num
    end
  end

  def hygiene=(num)
    if num > 10
      @hygiene = 10
    elsif num < 0
      @hygiene = 0
    else
      @hygiene = num
    end
  end

  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end

  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    val = @hygiene + 4
    self.hygiene = val
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    val = @hygiene - 3
    self.hygiene = val
    newVal = @happiness + 2
    self.happiness = newVal
    return "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    val = @happiness + 3
    self.happiness = val
    val2 = person.happiness + 3
    person.happiness = val2
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      val = @happiness - 2
      self.happiness = val
      val2 = person.happiness  - 2
      person.happiness = val2
      return 'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      val = @happiness + 1
      self.happiness = val
      val2 = person.happiness + 1
      person.happiness = val2
      return 'blah blah sun blah rain'
    else
      return 'blah blah blah blah blah'
    end

  end


end
