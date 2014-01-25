require_relative('item.rb')
require_relative('knapsack.rb')

if ARGV.length > 0
  num_items = ARGV[0].chomp.to_i
  num_knapsacks = ARGV[1].chomp.to_i
  num_generations = ARGV[2].chomp.to_i
end

items = []
knapsacks = []
generation = 1

# Generate random items
num_items.times do
  ran_weight = (rand * 10).round(2)
  ran_value = (rand * 100).round(2)
  items << Item.new(ran_weight, ran_value)
end

# Generate initial knapsacks
num_knapsacks.times do 
  ran_items = []
  num_items.times do
    if rand < 0.1
      ran_items << 1
    else
      ran_items << 0
    end
  end
  knapsacks << Knapsack.new(ran_items)
end

# Main loop
until generation > num_generations
  
  sum_value = 0.0

  # Calculate value and weight
  knapsacks.each do |knapsack|
    # p knapsack.chromosome
    total_weight = 0.0
    total_value = 0.0
    knapsack.chromosome.each_with_index do |gene, index|
      if gene === 1
        total_weight += items[index].weight
        total_value += items[index].value
      end
    end
    knapsack.total_weight = total_weight
    knapsack.total_value = total_value
    sum_value += total_value
    # p total_weight
    # p total_value
  end

end