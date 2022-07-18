# frozen_string_literal: true

SEPARATOR = '**********************************************************************'
f = File.open('doc/tasks.txt', 'r')
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
        t15.slice(1...(t15.size))
           .map.with_index { |_, i| t15[i] + diff }
puts "Result: #{(res15 == t15 ? diff : nil).inspect}"
puts SEPARATOR
puts tasks[16]
puts "Source array: #{t16 = Array.new(15) { rand(-50..50) }}"
# puts "Source array: #{t16 = [2, 4, 8, 16, 32]}"
denom = t16[1].to_f / t16[0] if t16.first != 0
res16 = [t16.first] +
        t16.slice(1...(t16.size))
           .map.with_index { |_, i| (t16[i] * denom).to_i }
puts "Result: #{(res16 == t16 ? denom.to_i : nil).inspect}"
puts SEPARATOR
puts tasks[17]
puts "Source array: #{t17 = Array.new(15) { rand(-50..50) }}"
count17 = 0
t17.each_cons(3) { |x, y, z| count17 += 1 if x < y && y > z }
puts "Result: #{count17}"
puts SEPARATOR
puts tasks[18]
puts "Source array: #{t18 = Array.new(15) { rand(-50..50) }}"
count18 = 0
t18.each_cons(3) { |x, y, z| count18 += 1 if x > y && y < z }
puts "Result: #{count17}"
puts SEPARATOR
puts tasks[19]
puts "Source array: #{t19 = Array.new(15) { rand(-50..50) }}"
arr19 = []
t19.each_cons(3) { |x, y, z| arr19 << y if x < y && y > z }
puts "Result: #{arr19.max}"
puts SEPARATOR
puts tasks[20]
puts "Source array: #{t20 = Array.new(15) { rand(-50..50) }}"
arr20 = []
t20.each_cons(3) { |x, y, z| arr20 << y if x > y && y < z }
puts "Result: #{arr20.min}"
puts SEPARATOR
puts tasks[21]
puts "Source array: #{t21 = Array.new(15) { rand(-50..50) }}"
count21 = 0
t21.each_with_index do |_, i|
  count21 += 1 if ![0, (t21.size - 1)].include?(i) && (t21[i] >= t21[i - 1] && t21[i] >= t21[i + 1])
end
puts "Result: #{count21}"
puts SEPARATOR
puts tasks[22]
puts "Source array: #{t22 = Array.new(15) { rand(-50..50) }}"
count22 = 0
t22.each_with_index do |_, i|
  count22 += 1 if ![0, (t22.size - 1)].include?(i) && (t22[i] < t22[i - 1] && t22[i] < t22[i + 1])
end
puts "Result: #{count22}"
puts SEPARATOR
puts tasks[23]
puts "R-number: #{r23 = rand(-50.0..50.0).round(2)}"
puts "Source array: #{t23 = Array.new(15) { rand(-50.00..50.00).round(2) }}"
r_num23 = t23.each_with_object([]) { |el, arr| arr << (el - r23).abs }
result23 = t23[r_num23.index(r_num23.min)]
puts "Result: #{r_num23.index(r_num23.min) + 1}-nth element, Number #{result23}"
puts SEPARATOR
puts tasks[24]
puts "R-number: #{r24 = rand(-50.0..50.0).round(2)}"
puts "Source array: #{t24 = Array.new(15) { rand(-50.00..50.00).round(2) }}"
r_num24 = t24.each_with_object([]) { |el, arr| arr << (el - r24).abs }
result24 = t24[r_num24.index(r_num24.max)]
puts "Result: #{r_num24.index(r_num24.max) + 1}-nth element, Number #{result24}"
puts SEPARATOR
puts tasks[25]
puts "Source array: #{t25 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t25.map { |el| el.positive? ? [t25.first, el] : el }.flatten}"
puts SEPARATOR
puts tasks[26]
puts "Source array: #{t26 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t26.map { |el| el.negative? ? [t26.first, el] : el }.flatten}"
puts SEPARATOR
puts tasks[27]
puts "Source array: #{t27 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t27.map { |el| el.positive? ? [el, t27.first] : el }.flatten}"
puts SEPARATOR
puts tasks[28]
puts "Source array: #{t28 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t28.map { |el| el.negative? ? [el, t28.first] : el }.flatten}"
puts SEPARATOR
puts tasks[29]
puts "Source array: #{t29 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t29.sort}"
puts SEPARATOR
puts tasks[30]
puts "Source array: #{t30 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t30.sort.reverse}"
puts SEPARATOR
puts tasks[31]
puts "Source array: #{t31 = Array.new(15) { rand(-50..50) }}"
arr31 = []
t31.each_with_index { |el, i| arr31 << [el, i] }
arr31_new = []
arr31.each(&:first).sort.reverse.each { |arr| arr31_new << arr.last }
puts "Result: #{arr31_new}"
puts SEPARATOR
puts tasks[32]
puts "Source array: #{t32 = Array.new(15) { rand(-50..50) }}"
arr32 = []
t32.each_with_index { |el, i| arr32 << [el, i] }
arr32_new = []
arr32.each(&:first).sort.each { |arr| arr32_new << arr.last }
puts "Result: #{arr32_new}"
puts SEPARATOR
puts tasks[33]
puts "Source array: #{t33 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t33.index(t33.min)}"
puts SEPARATOR
puts tasks[34]
puts "Source array: #{t34 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t34.index(t34.max)}"
puts SEPARATOR
puts tasks[35]
puts "Source array: #{t35 = Array.new(15) { rand(-5..5) }}"
puts "Result: #{t35.index(t35.min)}"
puts SEPARATOR
puts tasks[36]
puts "Source array: #{t36 = Array.new(15) { rand(-5..5) }}"
puts "Result: #{t36.index(t36.max)}"
puts SEPARATOR
puts tasks[37]
puts "Source array: #{t37 = Array.new(15) { rand(-5..5) }}"
puts "Result: #{t37.rindex(t37.min)}"
puts SEPARATOR
puts tasks[38]
puts "Source array: #{t38 = Array.new(15) { rand(-5..5) }}"
puts "Result: #{t38.rindex(t38.max)}"
puts SEPARATOR
puts tasks[39]
puts "Source array: #{t39 = Array.new(15) { rand(-5..5) }}"
min39 = t39.min
arr39 = t39.each_with_object([]) { |el, arr| arr << el if el == min39 }
puts "Result: #{arr39.size}"
puts SEPARATOR
puts tasks[40]
puts "Source array: #{t40 = Array.new(15) { rand(-5..5) }}"
max40 = t40.max
arr40 = t40.each_with_object([]) { |el, arr| arr << el if el == max40 }
puts "Result: #{arr40.size}"
puts SEPARATOR
