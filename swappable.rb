module Swappable

  private

  def swap(data, a, b)
    if(a != b)
      x = data[a]
      data[a] = data[b]
      data[b] = x
    end
  end
end #module