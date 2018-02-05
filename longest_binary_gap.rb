# find binary gap
def solution(n)
  startedSequence = false
  currentLength = -1
  maxLength = 0
  n.to_s(2).split("").each do |char|
    if char == '0'
      if startedSequence
        currentLength += 1
      end
    elsif char == '1'
      if startedSequence == false
        startedSequence = true;
      elsif maxLength < currentLength
        maxLength = currentLength
      end
      currentLength = 0
    end
  end
  maxLength
end
puts 267896.to_s(2)
puts solution(267896)