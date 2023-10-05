module MyEnumerable
  def all?()
    each { |element| return false unless yield(element) }
    true
  end

  def any?()
    each { |element| return true if yield(element) }
    false
  end

  def filter()
    even_int = []
    each { |element| even_int << element if yield(element) }
    even_int
  end
end
