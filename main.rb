require './quicksort'
# require './basic_partition_strategy'
require './efficient_partition_strategy'

print "Please enter numbers: "
input = gets
data = input.split.map {|item| item.to_i }

efficient_strategy = EfficientPartitionStrategy.new
quicksort = Quicksort.new(efficient_strategy)
quicksort.sort(data, 0, data.length-1)
puts data.join(', ')