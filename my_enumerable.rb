module MyEnumerable
  def all?
    each { |element| return false unless yield(element) }
    true
  end

  def any?
    each { |element| return true if yield(element) }
    false
  end

  def filter
    new_list = []
    each { |element| new_list << element if yield(element) }
    new_list
  end
end
