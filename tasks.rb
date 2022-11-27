#VAR 4
require 'matrix'

puts "----------------TASK 1"
C = Array.new(12){rand(-10..10)}
p C
puts "C after rotation"
p C.rotate(-1)

puts "----------------TASK 2"
def initMatrix(size)
  matrix = Array.new(size) { Array.new(size) }
  (0..size - 1).each do |i|
    (0..size - 1).each do |j|
      if i == j
        matrix[i][j] = 1
      else
        matrix[i][j] = rand 10
      end
    end
  end
  return matrix
end

def multiply(m1, m2)
  result = Array.new(m1.length) {Array.new(m2[0].length){0}}
  for i in 0..result.length - 1
    for j in 0..result[0].length-1
      for k in 0..m1[0].length - 1
        result[i][j] += m1[i][j] * m2[i][j]
      end
    end
  end
  return result
end

A = initMatrix(8)
B = initMatrix(8)
res = multiply(A, B)
puts "*********** A ************"
A.to_a.each {|r| puts r.inspect}
puts "*********** B ************"
B.to_a.each {|r| puts r.inspect}

puts "          result            "
res.to_a.each {|r| puts r.inspect}
