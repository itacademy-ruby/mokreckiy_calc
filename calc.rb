# encoding: utf-8
# interactive ruby calc.rb 1 '+' 2

def is_numeric?(i)
    i.to_i.to_s == i || i.to_f.to_s == i
end

#Начало цикла на обработку операций пока пользователь не согласился с выходом из калькулятора

cycle_check = false

begin
  #Вводим цифры и операнд

  begin
    puts "Enter first number:"
    first_num = gets.chomp
  end until is_numeric? first_num

  begin
    puts "Enter second number:"
    second_num = gets.chomp
  end until is_numeric? second_num

  begin
    puts "What are we going to do with it? (only +,-,/,*):"
    oper = gets.chomp
  end until oper =~ /[+-\/*]/

# Делаем действия над числами в зависимости от операнда. Деление на ноль перехватываем.

  result = case oper
           when '+'
             first_num.to_i + second_num.to_i
           when '-'
              first_num.to_i - second_num.to_i
           when '*'
              first_num.to_i * second_num.to_i
           when '/'	
                begin
          		    first_num.to_i / second_num.to_i
          			  rescue ZeroDivisionError => e
          				result = 'Division by 0 - to infinity and beyond!'
          		  end
           end

  puts result

# Спрашиваем пользователя о выходе или повторе

	puts "Again? [y/n]:"
	case gets.chomp
	when /^[yY]/
		puts "OK"
	when /^[nN]/, /^$/
		cycle_check = true
	end
end until cycle_check
