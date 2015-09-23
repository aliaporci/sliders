# just in case you find another slider place that serves a different number of sliders per order, we'll make it a variable so that you can shake things up.

sliders_per_order = 3

puts "How many people?"

eaters = gets.chomp.to_i

puts "How many extra sliders per person (minimum)?"

extra_sliders = gets.chomp.to_i

if (eaters * extra_sliders) % sliders_per_order == 0
  orders = eaters + eaters * extra_sliders / sliders_per_order
else
  orders = eaters + eaters * extra_sliders / sliders_per_order + 1
  leftovers = orders * sliders_per_order - (sliders_per_order + extra_sliders) * eaters
end

puts "You should place #{orders} orders."
puts "That's #{orders * sliders_per_order} sliders total!"
puts "You'll have #{leftovers} left over." unless (eaters * extra_sliders) % 3 == 0
puts "Hope y'all are hungry."



# alternate math (but completely the same)
#
# if (3 + extra_sliders) * eaters % 3 == 0
#   orders = (3 + extra_sliders) * eaters / 3
#   puts "You should place #{orders} orders."
#   puts "Hope you're hungry."
# else
#   orders = (3 + extra_sliders) * eaters / 3 + 1
#   puts "You should place #{orders} orders."
#   puts "Hope you're hungry."
# end
