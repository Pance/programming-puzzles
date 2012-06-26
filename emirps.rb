#http://www.reddit.com/r/dailyprogrammer/comments/vfylp/6222012_challenge_68_easy/

# Print out emirps below a number given by user

def emirps num
	i = 2
	while i < num do
		reverse_i = i.to_s.reverse.to_i
		if isPrime(i) && isPrime(reverse_i)
			print i.to_s + "\n"
		end
		i = i + 1
	end

end 

def isPrime num
	for n in 2..(num - 1)
		if (num % n) == 0
			return false
		end
	end
	
	return true
end

if ARGV[0] != nil
	emirps ARGV[0].to_i
end
