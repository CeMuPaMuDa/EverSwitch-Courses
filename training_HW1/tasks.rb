# frozen_string_literal: true

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
puts tasks[9]
puts "Source array: #{t9 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t9.map { |el| el.positive? ? t9.min : el }}"
puts SEPARATOR
puts tasks[10]
puts "Source array: #{t10 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t10.map { |el| el.positive? ? t10.max : el }}"
puts SEPARATOR
puts tasks[11]
puts "Source array: #{t11 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t11.map { |el| el.negative? ? t11.min : el }}"
puts SEPARATOR
puts tasks[12]
puts "Source array: #{t12 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t12.map { |el| el.negative? ? t12.max : el }}"
puts SEPARATOR
puts tasks[13]
puts "Source array: #{t13 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t13.rotate}"
puts SEPARATOR
puts tasks[14]
puts "Source array: #{t14 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t14.rotate(-1)}"
puts SEPARATOR
puts tasks[15]
puts "Source array: #{t15 = Array.new(15) { rand(-50..50) }}"
# puts "Source array: #{t15 = [1, 5, 9, 13, 17]}"
diff = t15[1] - t15[0]
res15 = [t15.first] +
        t15.slice(1...(t7.size - 1))
           .map.with_index { |_, i| t15[i] + diff }
puts "Result: #{res15 == t15 ? diff : 'nil'}"
puts SEPARATOR
