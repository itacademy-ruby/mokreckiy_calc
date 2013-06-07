# ruby calc.rb 1 '+' 2

#i = 0
#
#while i <= 5 do
#	p i
#	i = i + 1	
#end

#first_number = ARGV.first
#second_number = ARGV.last

#operand = ARGV[1]

#result = case operand
#when '+'
#    result = first_number.to_i + second_number.to_i
#when '-'
#	result = first_number.to_i - second_number.to_i
#when '*'
#	result = first_number.to_i * second_number.to_i
#when '/'	
#	result = first_number.to_i / second_number.to_i
#else
#	puts 'not simple math'
#end
#puts result

#result = x == 1
#
#if (x == 1)
#	puts 'x == 1'
#else
#	puts 'x != 1'
#end

trig = true
trig1 = true

while (trig == true)
	while (trig1 == true)
		puts "Enter first number:"
		f_n = gets.chomp
		if f_n.to_i.class == Fixnum
			puts "Num 1 check"
			trig1 = false
		else
			puts "Num 1 failed"
		end
	end
	trig1 = true
	while (trig1 == true)
		puts "Enter second number:"
		s_n = gets.chomp
		if s_n.to_i.class == Fixnum
			puts "Num 2 check"
			trig1 = false
		else
			puts "Num 2 failed"
		end
	end
	
#	opers = %w( + - / * )
	trig1 = true

	while (trig1 == true)
		puts "What are we going to do with it? (+,-,/,*):"
		case oper = gets.chomp
			when /[+-\/*]/
				trig1 = false
		else
			puts "Nope. Use +,-,/,*"
		end
	end

	trig1 = true
	
	result = case oper
		when '+'
			result = f_n.to_i + s_n.to_i
		when '-'
			result = f_n.to_i - s_n.to_i
		when '*'
			result = f_n.to_i * s_n.to_i
		when '/'	
			begin
			result = f_n.to_i / s_n.to_i
			#raise "Division by 0 - to infinity and beyond!"
			rescue ZeroDivisionError => e
				result = 'You can\'t divide by 0'
			end
		end
	puts result

	puts "Again? [y/n]:"
	case answer = gets.chomp
		when /^[yY]/
			puts "OK"
		when /^[nN]/, /^$/
			trig = false
	end
end
