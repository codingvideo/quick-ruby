

require './quicksort'
require './basic_partition_strategy'

partition_strategy = BasicPartitionStrategy.new
quicksort = Quicksort.new(partition_strategy)
data = [5,2,7,4,1,6,3]
quicksort.sort(data, 0, data.length-1)
puts data.join(', ')