# http://www.reddit.com/r/dailyprogrammer/comments/vmblw/6262012_challenge_69_easy/

# output should look like: 
#    +---------------+
#    |  Necessities  |
#    +---------------+
#    | fairy         |
#    | cakes         |
#    | happy         |
#    | fish          |
#    | disgustipated |
#    | melon-balls   |
#    +---------------+

title = "Necessities"
input = ['fairy', 'cakes', 'happy', 'fish', 'disgustipated', 'melon-balls']

def findLongestString array_strings
	longest = 0
	array_strings.each do |i|
		if( i.length > longest )
			longest = i.length
		end
	end
	return longest
end

def columnLine(str, longest)
	return "| " + str + (" " * (longest - str.length) ) + " |"
end

def columnLineDivider(len)
	return "+-" + ("-" * len) + "-+"
end

def printTableTitle(title, longest_len)
	puts columnLineDivider(longest_len)
	padding = longest_len - title.length
	left_padding = padding/2 
	right_padding = padding/2
	if (padding % 2) == 1
		right_padding = right_padding + 1
	end
	puts "| " + (" " * right_padding) + title + (" " * left_padding) + " |"
	puts columnLineDivider(longest_len)
end

def printTable(title, arr)
	longest = findLongestString(arr)
	printTableTitle(title, longest)
	arr.each do |i|
		puts columnLine(i, longest)
	end
	puts columnLineDivider(longest)
end

printTable(title, input)
