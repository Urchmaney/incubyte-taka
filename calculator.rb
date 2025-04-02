def add(str)
  (str.split ',').map { |s| s.split("\n").map(&:to_i).sum }.sum
end