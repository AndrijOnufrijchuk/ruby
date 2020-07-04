# Написати програму, яка обчислює середнє арифметичне всіх парних додатніх чисел

# Ви маєте написати код для перевірки всіх елементів масиву на парність та додатність, 
# та додавання парних елементів до результату.

class PositiveOddAverage
  def calculate

  	# Змінна, яка отримає значення кількості чисел
  	puts "Введіть довільну кількість чисел, розділених пробілами"

    # Просимо ввести довільне число
    input = gets.chomp

    # Ділимо стрічку на масив підстрічок, за подільний символ беремо пробіл
    arr = input.split(" ")



    # Змінна для сумування всіх парних додатніх чисел
    sum_of_odd_positive = 0
    # Змінна для підрахунку кількості парних додатніх чисел
    count_of_odd_positive = 0
    



for i in arr do 
i=i.to_i
if  i>1 and i%2==0 then 
    sum_of_odd_positive+=i
    count_of_odd_positive+=1
    
end
end




    result = sum_of_odd_positive / count_of_odd_positive if count_of_odd_positive > 0
    
    puts result
end
end