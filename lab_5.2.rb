def factorial(n)
	n.zero? ? 1 : (1..n).inject(:*)
 end
 
 def series_sum(x, n)
	epsilon = 0.001
	sum = 0.0
 
	if n.nil?
	  i = 0
	  term = (Math.log(3)**i / factorial(i).to_f) * x**i
 
	  while term.abs >= epsilon
		 sum += term
		 i += 1
		 term = (Math.log(3)**i / factorial(i).to_f) * x**i
	  end
	else
	  n.times do |i|
		 term = (Math.log(3)**i / factorial(i).to_f) * x**i
		 sum += term
	  end
	end
 
	return sum
 end
 
 # Задані значення
 x_start = 0.1
 x_end = 1.0
 n_start = 10
 n_end = 58
 
 # Обчислення загальної суми для кінцевих значень x та n
 total_sum = 0.0
 (x_start..x_end).step(0.1).each do |x|
	(n_start..n_end).each do |n|
	  total_sum += series_sum(x, n)
	end
 end
 
 # Виведення загальної суми з обмеженням знаків після коми
 puts "Загальна сума ряду: #{format('%.2f', total_sum)}"
 