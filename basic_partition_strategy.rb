class BasicPartitionStrategy

  def initialize(compare)
    @compare = compare
  end

  def partition(data, first, last)
    pivot = data[first]
    right_first = first+1
    (right_first..last).each do |i|
      if(@compare.call(data[i], pivot))
        swap(data, i, right_first)
        right_first+=1
      end
    end
    
    mid = right_first-1
    swap(data, first, mid)
    return mid
  end
  
  private

  def swap(data, a, b)
    if(a != b)
      x = data[a]
      data[a] = data[b]
      data[b] = x
    end
  end
end #class