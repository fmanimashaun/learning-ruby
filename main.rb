require_relative "./chap-4/words_from_string"
require_relative "./chap-4/count_frequency"

raw_text = "The problem breaks down into two parts. First, given some text as a string, return a list of words. That sounds like an array. Then, build a count for each distinct word. That sounds like a use for a hash---we can index it with the word and use the corresponding entry to keep a count."

word_list = words_from_string(raw_text)
counts = count_frequency(word_list)

# sort by count

sorted = counts.sort_by { |word, count| count }

p sorted