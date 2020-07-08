
class ComplexNumber

  attr_accessor :re, :im

  def initialize real, imaginary
    @re = real
    @im = imaginary
  end

  def modulo
    re*re+im*im
  end

 
  def add complex
    res = ComplexNumber.new 0, 0
    res.re = complex.re+re
    res.im = complex.im+im
    res
  end

  def multiply complex
    res = ComplexNumber.new 0, 0
    res.re = re*complex.re-im*complex.im
    res.im = re*complex.re+im*complex.im
    res
  end
end
num1=ComplexNumber.new(2,3)
num2=ComplexNumber.new(5,6)
puts num1.modulo
puts num2.modulo
puts num1.add(num2).re
puts num1.add(num2).im
puts num1.multiply(num2).re
puts num1.multiply(num2).im