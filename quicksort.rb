class Quicksort

  def initialize(partition_strategy)
    @strategy = partition_strategy
  end

  def sort(data, first, last)
    if(first < last)
      mid = @strategy.partition(data, first, last)
      sort(data, first, mid)
      sort(data, mid+1, last)
    end
  end
end #class