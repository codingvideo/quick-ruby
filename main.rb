def quicksort(data, first, last)
  if(first < last)
    mid = partition(data, first, last)
    quicksort(data, first, mid-1)
    quicksort(data, mid+1, last)
  end
end

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

data = [5,2,7,4,1,6,3]
quicksort(data, 0, data.length-1)
puts data.join(', ')