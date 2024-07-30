module StringCalculator
  def self.add(digits="")
    return 0 if digits.empty?
    digits = digits.gsub("\n", ",").split(",").map { |d| d.to_i }
    negatives = digits.select { |x| x < 0 }
    if negatives.any?
      raise "Negative values are not allowed" 
    end
    digits.reduce {|sum, d| sum + d}
  end
end