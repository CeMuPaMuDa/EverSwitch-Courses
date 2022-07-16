SEPARATOR = '**********************************************************************'
f = File.open('EverSwitch-Courses/training_HW1/doc/tasks.txt', 'r')
tasks = f.readlines(chomp: true)

puts SEPARATOR
puts tasks[1]
puts "Source array: #{t1 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t1.partition.with_index { |_, i| i.even? }}"
puts SEPARATOR
puts tasks[2]
puts "Source array: #{t2 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t2.partition.with_index { |_, i| i.odd? }}"
puts SEPARATOR
puts tasks[3]
puts "Source array: #{t3 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t3.index { |i| t3[0] < i && i < t3[-1] } || []}"
puts SEPARATOR
puts tasks[4]
puts "Source array: #{t4 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t4.rindex { |i| t4[0] < i && i < t4[-1] } || []}"
puts SEPARATOR
puts tasks[5]
puts "Source array: #{t5 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{[t5.first] +
      t5.slice(1...(t5.size - 1))
      .map { |x| x.even? ? (x + t5.first) : x } +
      [t5.last]}"
puts SEPARATOR
puts tasks[6]
puts "Source array: #{t6 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{[t6.first] +
      t6.slice(1...(t6.size - 1))
      .map { |x| x.even? ? (x + t6.last) : x } +
      [t6.last]}"
puts SEPARATOR
puts tasks[7]
puts "Source array: #{t7 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{[t7.first] +
      t7.slice(1...(t7.size - 1))
      .map { |x| x.odd? ? (x + t7.last) : x } +
      [t7.last]}"
puts SEPARATOR
puts tasks[8]
puts "Source array: #{t8 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{[t8.first] +
      t8.slice(1...(t8.size - 1))
      .map { |x| x.odd? ? (x + t8.first) : x } +
      [t8.last]}"
puts SEPARATOR
