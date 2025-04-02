class NegativeNumbersError < StandardError
  def initialize(negative_numbers)
    super("negative numbers not allowed#{negative_numbers.join ","}")
  end
end

def add(str)
  retrun unless str.is_a? String

  negative_numbers = []
  values = []
  delimiter = ","
  /(\/\/(?<limiter>[^\n]*)\n)?(?<numbers>.*)/m =~ str

  delimiter = limiter if limiter
  (numbers.split delimiter).each do |s| 
    s.split("\n").each do |v|
      values.push v.to_i
      negative_numbers.push v if v.to_i.negative?
    end
  end

  raise NegativeNumbersError, negative_numbers unless negative_numbers.empty?

  values.sum
end