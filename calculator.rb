def add(str)
  (str.split ',').map(&:to_i).sum
end