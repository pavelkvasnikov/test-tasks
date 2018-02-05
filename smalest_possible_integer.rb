# find the smalest possible positive integer that is not included in the array
# if [-1,-3,-4] == 1
# if [-1,-7, 1 ,2 ,4] == 3
# if [-1,-7, 1 ,2 ,3] == 4
def solution(a)
  length = a.length
  i = 0
  a = a.sort
  smalest = 1
  while(i < length-1) do
    current_val = a[i]
    if current_val < 0
      i+=1
      next
    end
    next_val = a[i+1]
    if next_val - current_val > 1
      smalest = current_val + 1
      break
    elsif i == length-2
      smalest = next_val + 1
      break
    end
    i+= 1
  end
  smalest
end

puts solution([-1,-2, 1,2,3])