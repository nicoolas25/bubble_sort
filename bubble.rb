
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

def swaps(sequence)
  swaps = 0
  until sorted?(sequence)
    previous_index = 0
    current_index = 1

    # puts sequence.inspect
    while current_index < sequence.size
      if sequence[previous_index] > sequence[current_index]
        swap(sequence, previous_index, current_index)
        swaps += 1
      end

      # puts sequence.inspect

      previous_index += 1
      current_index += 1
    end
  end
  return swaps
end

a = [4, 3, 5, 0, 1]
permutation = a.permutation.to_a

result = permutation.max_by { |sequence| swaps(sequence.dup) }
numberofswaps = swaps(result.dup)
numberofswaps2 = swaps([5, 4, 3, 1, 0])

puts result
puts numberofswaps
puts numberofswaps2
