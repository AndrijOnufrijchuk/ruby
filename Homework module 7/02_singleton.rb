
class SingletonClass
  @@n = 0
  def initialize
    @@n+=1
  end
  private_class_method :new

  def self.get_calculator
    if @@n==0
      @@instance=new
    else
      @@instance
    end
  end
end

puts SingletonClass.get_calculator.equal?(SingletonClass.get_calculator)