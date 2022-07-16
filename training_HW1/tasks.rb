SEPARATOR = '**********************************************************************'
f = File.open('EverSwitch-Courses/training_HW1/doc/tasks.txt', 'r')
tasks = f.readlines(chomp: true)

puts SEPARATOR
puts tasks[1]
puts "Исходный массив: #{t1 = Array.new(15) { rand(-50..50) }}"
puts "#{t1.partition.with_index { |_, i| i.even? }}"
puts SEPARATOR
puts tasks[2]
puts "Исходный массив: #{t2 = Array.new(15) { rand(-50..50) }}"
puts "#{t2.partition.with_index { |_, i| i.odd? }}"
puts SEPARATOR
puts tasks[3]
puts "Исходный массив: #{t3 = Array.new(15) { rand(-50..50) }}"
puts "#{t3.index { |i| t3[0] < i && i < t3[-1] } || []}"
puts SEPARATOR
puts tasks[4]
puts "Исходный массив: #{t4 = Array.new(15) { rand(-50..50) }}"
puts "#{t4.rindex { |i| t4[0] < i && i < t4[-1] } || []}"
puts SEPARATOR
puts "Исходный массив: #{t5 = Array.new(15) { rand(-50..50) }}"
puts "#{[t5.first] +
      t5.slice(1...(t5.size - 1))
      .map { |x| x.even? ? (x + t5.first) : x } +
      [t5.last]}"
puts SEPARATOR
