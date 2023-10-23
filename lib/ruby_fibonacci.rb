# Assignment 1 - Using iteration, write a method #fibs which takes a number
# and returns an array containing that many numbers from the fibonacci sequence.

def fibs(sequence, number)
  while sequence.length < number
    added_number = sequence[-1] + sequence[-2]
    sequence.push(added_number)
  end

  sequence[0, number]
end

# Now write another method #fibs_rec which solves the same problem recursively.

def fibs_rec(sequence, number)
  return sequence.first(number) if number == 1 || number.zero?
  return sequence if number <= 2

  sequence.push(sequence[-1] + sequence[-2])
  fibs_rec(sequence, number - 1)
end

p fibs([0, 1], 5)
p fibs_rec([0, 1], 5)
