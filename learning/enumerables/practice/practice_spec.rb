require_relative 'practice_exercises'

RSpec.describe 'Enumerable practice' do
  describe 'Level 1' do
    it 'double_all doubles every number' do
      expect(double_all([1, 2, 3])).to eq([2, 4, 6])
      expect(double_all([])).to eq([])
    end

    it 'even_numbers keeps only evens' do
      expect(even_numbers([1, 2, 3, 4, 6])).to eq([2, 4, 6])
    end

    it 'without_short_words rejects words shorter than min_length' do
      expect(without_short_words(%w[a tree is big forest], 4)).to eq(%w[tree forest])
    end

    it 'first_negative returns the first negative number' do
      expect(first_negative([3, -1, -5])).to eq(-1)
    end

    it 'first_negative returns nil when there is none' do
      expect(first_negative([1, 2])).to be_nil
    end
  end

  describe 'Level 2' do
    it 'total_price adds up the prices' do
      expect(total_price([1.5, 2.5, 3])).to eq(7.0)
      expect(total_price([])).to eq(0)
    end

    it 'all_adults? is true only when everyone is 18 or older' do
      expect(all_adults?([18, 30, 45])).to be true
      expect(all_adults?([18, 17])).to be false
    end

    it 'any_overdue? is true when any value is below zero' do
      expect(any_overdue?([3, 0, -2])).to be true
      expect(any_overdue?([1, 2])).to be false
    end

    it 'count_long_words counts words longer than 5 characters' do
      expect(count_long_words(%w[apple banana kiwi cherry])).to eq(2)
    end
  end

  describe 'Level 3' do
    it 'group_by_length groups words by their length' do
      expect(group_by_length(%w[cat horse dog mouse]))
        .to eq({ 3 => %w[cat dog], 5 => %w[horse mouse] })
    end

    it 'split_pass_fail returns [passed, failed]' do
      expect(split_pass_fail([40, 75, 50, 10])).to eq([[75, 50], [40, 10]])
    end

    it 'word_frequencies counts each word' do
      expect(word_frequencies(%w[a b a c a b])).to eq({ 'a' => 3, 'b' => 2, 'c' => 1 })
    end

    it 'names_to_lengths maps each name to its length' do
      expect(names_to_lengths(%w[Ann Bobby])).to eq({ 'Ann' => 3, 'Bobby' => 5 })
    end

    it 'longest_word returns the longest word' do
      expect(longest_word(%w[cat horse elephant dog])).to eq('elephant')
    end

    it 'longest_word returns nil for an empty array' do
      expect(longest_word([])).to be_nil
    end

    it 'youngest_first returns names ordered by age' do
      people = [
        { name: 'Ann', age: 30 },
        { name: 'Ben', age: 25 },
        { name: 'Cy', age: 41 }
      ]
      expect(youngest_first(people)).to eq(%w[Ben Ann Cy])
    end

    it 'all_tags returns one flat array of every tag' do
      posts = [
        { title: 'a', tags: %w[ruby code] },
        { title: 'b', tags: %w[code tips] }
      ]
      expect(all_tags(posts)).to eq(%w[ruby code code tips])
    end
  end

  describe 'Level 4' do
    it 'valid_prices keeps only positive numbers, as floats' do
      expect(valid_prices(['9.99', 'abc', '3', '-1', ''])).to eq([9.99, 3.0])
    end

    it 'count_price_increases counts days the price went up' do
      expect(count_price_increases([10, 12, 11, 13, 15])).to eq(3)
      expect(count_price_increases([5])).to eq(0)
    end

    it 'batches splits items into groups of at most size' do
      expect(batches([1, 2, 3, 4, 5], 2)).to eq([[1, 2], [3, 4], [5]])
    end

    it 'average_score_by_student averages each student score' do
      records = [
        { student: 'Ann', score: 80 },
        { student: 'Ann', score: 90 },
        { student: 'Ben', score: 70 }
      ]
      expect(average_score_by_student(records)).to eq({ 'Ann' => 85.0, 'Ben' => 70.0 })
    end
  end

  describe 'Level 5' do
    it 'top_words returns the most common words, ties broken alphabetically' do
      text = 'The cat and the hat and the bat'
      expect(top_words(text, 3)).to eq([['the', 3], ['and', 2], ['bat', 1]])
    end

    it 'low_stock_report lists items under 4, sorted by name' do
      inventory = { 'pens' => 2, 'pads' => 1, 'ink' => 9 }
      expect(low_stock_report(inventory)).to eq(['pads: 1', 'pens: 2'])
    end

    it 'my_map works like map' do
      expect(my_map([1, 2, 3]) { |n| n * 2 }).to eq([2, 4, 6])
      expect(my_map(%w[a b]) { |s| s.upcase }).to eq(%w[A B])
    end
  end
end
