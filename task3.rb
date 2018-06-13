firTime = ARGV[0].to_i
secTime = ARGV[1].to_i
result = firTime+secTime

#найходим число часов, минут, секунд
hou = result / 3600
result = result % 3600
min = result / 60
result = result % 60
sec = result / 1

#определим склонение слова час
if (hou % 10 == 1) and (hou != 11)
	resHou = "#{hou} час"
elsif (hou % 10 < 5) and (hou % 10 > 1) and (hou / 10 != 1)
	resHou = "#{hou} часа"
elsif (hou != 0)
	resHou = "#{hou} часов"
else 
	resHou = "0"
end

#определим склонение слова минута
if (min % 10 == 1) and (min != 11)
	resMin = "#{min} минута"
elsif (min % 10 < 5) and (min % 10 > 1) and (min / 10 != 1)
	resMin = "#{min} минуты"
elsif (min != 0)
	resMin = "#{min} минут"
else 
	resMin = "0"
end

#определим склонение слова секунда
if (sec % 10 == 1) and (sec != 11)
	resSec = "#{sec} секунда"
elsif (sec % 10 < 5) and (sec % 10 > 1) and (sec / 10 != 1)
	resSec = "#{sec} секунды"
elsif (sec != 0)
	resSec = "#{sec} секунд"
else 
	resSec = "0"
end

#найдём правильную компановку результата с пробелами
finalTime = ""
if resHou != "0" 
	finalTime += resHou 
end
if resMin != "0" 
	if (finalTime != "") 
		finalTime += " " 
	end
	finalTime += resMin 
end
if resSec != "0" 
	if finalTime != "" 
		finalTime += " " 
	end
	finalTime += resSec 
end

#вывод
if (finalTime != "") and (firTime <= 100000) and (firTime >= 0) and (secTime <= 100000) and (secTime >= 0)
	puts finalTime
end
