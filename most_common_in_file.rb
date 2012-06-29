# http://www.reddit.com/r/dailyprogrammer/comments/vsv3g/6292012_challenge_70_easy/

def most_common_words_in_file(filename, n_most_common)
	words_hash = Hash.new(0)
	File.open(filename).read.split.each do |i|
		words_hash[i] += 1
	end
	word_counts = words_hash.sort_by { |key, value| value }.reverse
	n_most_common.times do |i|
		puts "#{word_counts[i][0]} : #{word_counts[i][1]}"
	end
end
