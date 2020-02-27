class EfficientPartitionStrategy

  def partition(data, first, last)
    pivot = data[(first+last)/2]
    i = first - 1
    j = last + 1
    while(true)
      while(true)
        i = i + 1
        if(data[i] >= pivot)
          break
        end
      end
      while(true)
        j = j - 1
        if(data[j] <= pivot)
          break
        end
      end
      if(i < j)
        if(data[i] != data[j])
          swap(data, i, j)
        end
      else
        return j
      end
    end
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