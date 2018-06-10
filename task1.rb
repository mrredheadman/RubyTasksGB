num = ARGV[0].to_s
cs1 = ARGV[1].to_i
cs2 = ARGV[2].to_i

#массив для сравнения букв
checker = "0123456789abcdefghijklmnopqrstuvwxyz"

#в десятичную
numDec = 0
i = num.length-1
while i >= 0
	numDec += (checker.index(num[i]))*(cs1**(num.length-1-i))
	i -= 1
end

#в нужную
newNum = ""
i = 0
while numDec>0
	newDigit = numDec%cs2
	numDec = numDec/cs2
	newNum = checker[newDigit] + newNum
	i += 1
end

puts newNum