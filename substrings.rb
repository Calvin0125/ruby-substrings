dictionary = ["rain", "spain", "plain", "main", "hello", "goodbye"]
puts "Enter a word or sentence to check"
user_string = gets.chomp
matches = {}
dictionary.each do |word|
    if /#{word}/i.match?(user_string)
        matches[word] = user_string.scan(/#{word}/i).count
    end
end
p matches