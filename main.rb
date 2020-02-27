require './quicksort'
require './basic_partition_strategy'
require './efficient_partition_strategy'

efficient_strategy = EfficientPartitionStrategy.new
quicksort = Quicksort.new(efficient_strategy)
data1 = [5,2,7,4,1,6,3]
quicksort.sort(data1, 0, data1.length-1)
puts data1.join(', ')

# change strategy but use the same quicksort object
compare = Proc.new{|item, pivot| item < pivot }
basic_strategy = BasicPartitionStrategy.new(compare)
quicksort.strategy = basic_strategy
data2 = [5,2,7,4,1]
quicksort.sort(data2, 0, data2.length-1)
puts data2.join(', ')