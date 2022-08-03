def iter_range(first_ele, last_ele)
  return [] if last_ele < first_ele

  result = []
  (first_ele...last_ele).each do |i|
    result << i
  end

  result

end

def recur_range(first_ele, last_ele)
  return [] if last_ele < first_ele
  return [first_ele] if last_ele == first_ele + 1

  recur_range(first_ele, first_ele+1) + recur_range(first_ele+1, last_ele)
  
end

  # p iter_range(2, 7)
  p recur_range(2,7)