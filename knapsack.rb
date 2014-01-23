class Knapsack

  @items = []

  def add_item(item)
    @items << item
  end

  def total_weight
    total = 0.0
    @items.each do |item|
      total += item.weight
    end
    total
  end

end