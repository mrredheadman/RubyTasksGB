dayNum = ARGV[0].to_i
m = ARGV[1]
yearNum = ARGV[2].to_i

#массивы для сопоставления названия месяца с его длиной
months = %w{января февраля марта апреля мая июня июля августа сентября октября ноября декабря}
monthLen = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

#учитываем длину года и февраля в зависимости от високосных годов
yearLen = 365
if (yearNum % 4 == 0) 
	monthLen[1] += 1
	yearLen += 1 
end

#вычисляем количество прошедших дней
monthNum = months.index(m)
today = 0
for i in 0..monthNum-1
	today += monthLen[i]
end
today += dayNum

puts yearLen-today