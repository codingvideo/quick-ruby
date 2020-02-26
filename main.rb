class Quicksort
  
  def initialize(partition_strategy)
    @strategy = partition_strategy
  end

  def sort(data, first, last)
    if(first < last)
      mid = @strategy.partition(data, first, last)
      sort(data, first, mid-1)
      sort(data, mid+1, last)
    end
  end
end #class

class BasicPartitionStrategy

  def partition(data, first, last)
    pivot = data[first]
    right_first = first+1
    (right_first..last).each do |i|
      if(data[i] < pivot)
        swap(data, i, right_first)
        right_first+=1
      end
    end
    
    mid = right_first-1
    swap(data, first, mid)
    return mid
  end
  
  def swap(data, a, b)
    if(a != b)
      x = data[a]
      data[a] = data[b]
      data[b] = x
    end
  end
end #class

partition_strategy = BasicPartitionStrategy.new
quicksort = Quicksort.new(partition_strategy)
data = [5,2,7,4,1,6,3]
quicksort.sort(data, 0, data.length-1)
puts data.join(', ')