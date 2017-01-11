sequence = [4, 3, 5, 0, 1]
swaps = 0

def swap(array, index_1, index_2)
  tmp = array[index_1]
  array[index_1] = array[index_2]
  array[index_2] = tmp
end

def sorted?(sequence)
  sequence[0..-2].each.with_index do |elt, index|
    if elt > sequence[index + 1]
      return false
    end
  end
  true
end

until sorted?(sequence)
  previous_index = 0
  current_index = 1

  # puts sequence.inspect
  while current_index < sequence.size
    if sequence[previous_index] > sequence[current_index]
      swap(sequence, previous_index, current_index)
    end

    # puts sequence.inspect

    previous_index += 1
    current_index += 1
  end
end

result = sequence

puts "Final result: #{result}"
puts "Swaps: #{swaps}"

