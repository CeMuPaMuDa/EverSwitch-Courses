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
puts "Source array: #{t15 = Array.new(5) { rand(-50..50) }}"
# puts "Source array: #{t15 = [1, 5, 9, 13, 17]}"
diff = t15[1] - t15[0]
res15 = [t15.first] +
        t15.slice(1...(t15.size))
           .map.with_index { |_, i| t15[i] + diff }
puts "Result: #{(res15 == t15 ? diff : nil).inspect}"
puts SEPARATOR
puts tasks[16]
puts "Source array: #{t16 = Array.new(5) { rand(1..50) }}"
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
arr31.sort.reverse.each { |arr| arr31_new << arr.last }
puts "Result: #{arr31_new}"
puts SEPARATOR
puts tasks[32]
puts "Source array: #{t32 = Array.new(15) { rand(-50..50) }}"
arr32 = []
t32.each_with_index { |el, i| arr32 << [el, i] }
arr32_new = []
arr32.sort.each { |arr| arr32_new << arr.last }
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
puts "Result: #{t39.select { |el| el == min39 }.size}"
puts SEPARATOR
puts tasks[40]
puts "Source array: #{t40 = Array.new(15) { rand(-5..5) }}"
max40 = t40.max
puts "Result: #{t40.select { |el| el == max40 }.size}"
puts SEPARATOR
puts tasks[41]
puts "Source array: #{t41 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t41.select(&:even?).min}"
puts SEPARATOR
puts tasks[42]
puts "Source array: #{t42 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t42.select(&:odd?).min}"
puts SEPARATOR
puts tasks[43]
puts "Source array: #{t43 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t43.select(&:even?).max}"
puts SEPARATOR
puts tasks[44]
puts "Source array: #{t44 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t44.select(&:odd?).max}"
puts SEPARATOR
puts tasks[45]
puts "Source array: #{t45 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t45.select(&:positive?).min}"
puts SEPARATOR
puts tasks[46]
puts "Source array: #{t46 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t46.select(&:negative?).max}"
puts SEPARATOR
puts tasks[47]
puts "Source array: #{t47 = Array.new(15) { rand(-50..50) }}"
puts "Interval: #{i47 = (rand(-50..0)..rand(1..50))}"
puts "Result: #{t47.select { |el| i47.include? el }.min}"
puts SEPARATOR
puts tasks[48]
puts "Source array: #{t48 = Array.new(15) { rand(-50..50) }}"
puts "Interval: #{i48 = (rand(-50..0)..rand(1..50))}"
puts "Result: #{t48.select { |el| i48.include? el }.max}"
puts SEPARATOR
puts tasks[49]
puts "Source array: #{t49 = Array.new(15) { rand(-5..5) }}"
puts "Result: #{t49.index(t49.min)} elements"
puts SEPARATOR
puts tasks[50]
puts "Source array: #{t50 = Array.new(15) { rand(-5..5) }}"
puts "Result: #{t50.index(t50.max)} elements"
puts SEPARATOR
puts tasks[51]
puts "Source array: #{t51 = Array.new(15) { rand(-5..5) }}"
puts "Result: #{(t51.size - t51.index(t51.max)) - 1} elements"
puts SEPARATOR
puts tasks[52]
puts "Source array: #{t52 = Array.new(15) { rand(-5..5) }}"
puts "Result: #{(t52.size - t52.index(t52.min)) - 1} elements"
puts SEPARATOR
puts tasks[53]
puts "Source array: #{t53 = Array.new(15) { rand(-5..5) }}"
puts "Result: #{t53.rindex(t53.max)} elements"
puts SEPARATOR
puts tasks[54]
puts "Source array: #{t54 = Array.new(15) { rand(-5..5) }}"
puts "Result: #{t54.rindex(t54.min)} elements"
puts SEPARATOR
puts tasks[55]
puts "Source array: #{t55 = Array.new(15) { rand(-5..5) }}"
puts "Result: #{t55.size - t55.rindex(t55.max) - 1} elements"
puts SEPARATOR
puts tasks[56]
puts "Source array: #{t56 = Array.new(15) { rand(-5..5) }}"
puts "Result: #{t56.size - t56.rindex(t56.min) - 1} elements"
puts SEPARATOR
puts tasks[57]
puts "Source array: #{t57 = Array.new(15) { rand(-5..5) }}"
imax57 = t57.index(t57.max)
imin57 = t57.index(t57.min)
puts "Result: #{imax57 < imin57 ? imax57 : imin57}"
puts SEPARATOR
puts tasks[58]
puts "Source array: #{t58 = Array.new(15) { rand(-5..5) }}"
imax58 = t58.rindex(t58.max)
imin58 = t58.rindex(t58.min)
puts "Result: #{imax58 > imin58 ? imax58 : imin58}"
puts SEPARATOR
puts tasks[59]
puts "Source array: #{t59 = Array.new(15) { rand(-2..2) }}"
fst_min = t59.index(t59.min)
lst_min = t59.rindex(t59.min)
puts "Result: #{(lst_min - fst_min) - 1}"
puts SEPARATOR
puts tasks[60]
puts "Source array: #{t60 = Array.new(15) { rand(-2..2) }}"
fst_max = t60.index(t60.max)
lst_max = t60.rindex(t60.max)
puts "Result: #{(lst_max - fst_max) - 1}"
puts SEPARATOR
puts tasks[61]
puts "Source array: #{t61 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t61.max(2)}"
puts SEPARATOR
puts tasks[62]
puts "Source array: #{t62 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t62.min(2)}"
puts SEPARATOR
puts tasks[63]
puts "Source array: #{t63 = Array.new(15) { rand(-1..1) }}"
count63 = 0
min_el = t63.min
count_arr63 = t63.each_with_object([]) do |el, arr|
  if el == min_el
    count63 += 1
  else
    arr << count63
    count63 = 0
  end
end
puts "Result: #{count_arr63.max}"
puts SEPARATOR
puts tasks[64]
puts "Source array: #{t64 = Array.new(15) { rand(-1..1) }}"
count64 = 0
max_el = t64.max
count_arr64 = t64.each_with_object([]) do |el, arr|
  if el == max_el
    count64 += 1
  else
    arr << count64
    count64 = 0
  end
end
puts "Result: #{count_arr64.max}"
puts SEPARATOR
puts tasks[65]
puts "Source array: #{t65 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t65.partition(&:even?)}"
puts SEPARATOR
puts tasks[66]
puts "Source array: #{t66 = Array.new(15) { rand(-50..50) }}"
puts "Result: #{t66.partition(&:odd?)}"
puts SEPARATOR
puts tasks[67]
puts "Source array: #{t67 = Array.new(3) { rand(-50..50) }}"
bool67 = t67.first.even?
res67 = []
t67.each do |el|
  if el.even? == bool67
    bool67 = !bool67
  else
    res67 << el
  end
end
puts "Result: #{res67.empty?}"
puts SEPARATOR
puts tasks[68]
puts "Source array: #{t68 = Array.new(3) { rand(-50..50) }}"
bool68 = t68.first.negative?
res68 = []
t68.each do |el|
  if el.negative? == bool68
    bool68 = !bool68
  else
    res68 << el
  end
end
puts "Result: #{res68.empty?}"
puts SEPARATOR
puts tasks[69]
puts "R-number: #{r69 = rand(-50.0..50.0).round(2)}"
puts "Source array: #{t69 = Array.new(15) { rand(-50.00..50.00).round(2) }}"
no_l69 = t69[0..t69.size - 2]
no_f69 = t69[1..t69.size - 1]
arr69 = []

no_l69.each_with_index do |x, ix|
  no_f69.each_with_index do |y, iy|
    arr69 << [ix, iy + 1, (x + y).round(2)]
  end
end

r_num69 = arr69.each_with_object([]) { |el, arr| arr << (el.last - r69).abs }
result69 = arr69[r_num69.index(r_num69.min)]

puts "Result: #{t69[result69.first]} + #{t69[result69[1]]} = #{result69.last}"
puts SEPARATOR
puts tasks[70]
puts "R-number: #{r70 = rand(-50.0..50.0).round(2)}"
puts "Source array: #{t70 = Array.new(15) { rand(-50.00..50.00).round(2) }}"
no_l70 = t70[0..t70.size - 2]
no_f70 = t70[1..t70.size - 1]
arr70 = []

no_l70.each_with_index do |x, ix|
  no_f70.each_with_index do |y, iy|
    arr70 << [ix, iy + 1, (x + y).round(2)]
  end
end

r_num70 = arr70.each_with_object([]) { |el, arr| arr << (el.last - r70).abs }
result70 = arr70[r_num70.index(r_num70.max)]

puts "Result: #{t70[result70.first]} + #{t70[result70[1]]} = #{result70.last}"
