# Enumerable practice, easy to hard. Fill in each method, then run:
#   rspec practice_spec.rb
# Work top to bottom. Lines marked NEW introduce a method you haven't used yet:
# look it up in the Ruby docs (ruby-doc.org, Enumerable) before you start.

# ---------- Level 1: the basics ----------

def double_all(numbers)
  # use #map
  # return a new array with every number doubled
end

def even_numbers(numbers)
  # use #select
  # return an array with only the even numbers
end

def without_short_words(words, min_length)
  # NEW: #reject (the opposite of #select)
  # return the words that are at least min_length characters long
end

def first_negative(numbers)
  # NEW: #find (also called #detect)
  # return the first negative number, or nil if there isn't one
end

# ---------- Level 2: asking questions about collections ----------

def total_price(prices)
  # NEW: #sum (or use #reduce, then compare the two)
  # return the total of all prices
end

def all_adults?(ages)
  # NEW: #all?
  # return true if every age is 18 or older
end

def any_overdue?(days_left)
  # NEW: #any?
  # return true if at least one value is below 0
end

def count_long_words(words)
  # NEW: #count with a block
  # return how many words are longer than 5 characters
end

# ---------- Level 3: real-world helpers ----------

def group_by_length(words)
  # NEW: #group_by
  # return a hash: word length => array of words with that length
end

def split_pass_fail(scores)
  # NEW: #partition
  # return [passed, failed]; a score of 50 or more passes
end

def word_frequencies(words)
  # NEW: #tally
  # return a hash: word => how many times it appears
end

def names_to_lengths(names)
  # NEW: #each_with_object (compare it with #reduce)
  # return a hash: name => number of characters
end

def longest_word(words)
  # NEW: #max_by
  # return the longest word, or nil for an empty array
end

def youngest_first(people)
  # NEW: #sort_by
  # people is an array of hashes like { name: "Ann", age: 30 }
  # return the names, youngest person first
end

def all_tags(posts)
  # NEW: #flat_map
  # each post is a hash like { title: "x", tags: ["ruby", "code"] }
  # return one flat array of every tag from every post (keep duplicates)
end

# ---------- Level 4: modern Ruby you'll see in real code ----------

def valid_prices(raw_prices)
  # NEW: #filter_map (select and map in one step)
  # raw_prices is an array of strings like "9.99", "abc", "", "-1"
  # return an array of the prices that are numbers above 0, as floats
  # hint: Float("abc", exception: false) returns nil instead of raising
end

def count_price_increases(prices)
  # NEW: #each_cons
  # prices is an array of daily prices
  # return how many days the price was higher than the day before
end

def batches(items, size)
  # NEW: #each_slice
  # return the items split into arrays of at most `size` items
end

def average_score_by_student(records)
  # combine #group_by with Hash#transform_values
  # records look like { student: "Ann", score: 80 }
  # return a hash: student => average score (a float)
end

# ---------- Level 5: challenges ----------

def top_words(text, count)
  # chain: downcase, split, #tally, #sort_by, #first
  # return the `count` most common words as [word, times] pairs
  # most common first; break ties alphabetically
end

def low_stock_report(inventory)
  # inventory is a hash like { "pens" => 2, "pads" => 9 }
  # return an array of "name: quantity" strings for items with fewer than 4,
  # sorted alphabetically by item name
end

def my_map(array)
  # rebuild #map yourself without calling #map
  # use #reduce (or #each) and yield each element to the block
  # return the new array of block results
end
