class Glider
  def lift
    puts "Rising"
  end

  def bank
    puts "Turning"
  end

  private :bank
end

class Nomad
  def initialize(glider)
    @glider = glider
  end

  def do(action)
    @glider.send(action)
  end
end

myglider = Glider.new
nomad = Nomad.new(myglider)
nomad.do("bank")
