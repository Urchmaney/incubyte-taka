def add(str)
  delimiter = ","
  /(\/\/(?<limiter>[^\n]*)\n)?(?<numbers>.*)/m =~ str

  delimiter = limiter if limiter
  (numbers.split delimiter).map { |s| s.split("\n").map(&:to_i).sum }.sum
end