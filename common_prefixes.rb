require "bundler/inline"

gemfile do
  gem "rspec"
end

require "rspec/autorun"

def longest_common_prefix(strs)
    return strs[0] if strs.size == 1

    prefixes = []
    strs.each do |current_word|
      strs.each do |word|
        current_prefix = ''
        return '' if word[0] != current_word[0]
        next if prefixes.include?(word)

        smallest_word_size = [current_word, word].min.size
        smallest_word_size.times do |i|
          if word[i] == current_word[i]
            current_prefix << word[i]
          else
            break
          end
        end
        prefixes << current_prefix if current_prefix != ''
      end
    end

    return '' if prefixes.empty?
    return prefixes.min if (strs - prefixes).empty?
    prefixes.max_by { |i| prefixes.count(i) }
end

# Test cases
RSpec.describe 'Comum Prefix' do
 describe '#longest_common_prefix' do
   it 'returns an empty string' do
     strs = %w[dog racecar car]
     expect(longest_common_prefix(strs)).to eq ''
   end

   it 'returns fl' do
     strs = %w[flower flow flight]
     # puts longest_common_prefix(strs)
     expect(longest_common_prefix(strs)).to eq 'fl'
   end

   it 'returns a' do
     strs = %w[a]
     # puts longest_common_prefix(strs)
     expect(longest_common_prefix(strs)).to eq 'a'
   end

   it 'c' do
     strs = %w[cir car]
     # puts longest_common_prefix(strs)
     expect(longest_common_prefix(strs)).to eq 'c'
   end
   
   it 'returns an empty string' do
     strs = %w[reflower flow flight]
     # puts longest_common_prefix(strs)
     expect(longest_common_prefix(strs)).to eq ''
   end

   it 'flower' do
     strs = %w[flower flower flower flower]
     # puts longest_common_prefix(strs)
     expect(longest_common_prefix(strs)).to eq 'flower'
   end

   it 'abc' do
     strs = %w[abcc abcc abcb]
     # puts longest_common_prefix(strs)
     expect(longest_common_prefix(strs)).to eq 'abc'
   end
 end
end

