local Hamming = {}

function Hamming.compute(a, b)
  h = 0
  if #a ~= #b then
    return -1
  else
    for i = 1, #a do
      if string.sub(a, i, i) ~= string.sub(b, i, i) then
        h = h + 1
      end
    end
  end
  return h
end

return Hamming
