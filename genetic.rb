require_relative('item.rb')
require_relative('knapsack.rb')

if ARGV.length > 0
  num_items = ARGV[0].chomp.to_i
  num_knapsacks = ARGV[1].chomp.to_i
  num_generations = ARGV[2].chomp.to_i
end

items = []
knapsacks = []

# Generate random items
num_items.times do
  ran_weight = (rand * 10).round(2)
  ran_value = (rand * 100).round(2)
  items << Item.new(ran_weight, ran_value)
end