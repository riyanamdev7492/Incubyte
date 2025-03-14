class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    result = numbers.gsub("\n", ",").split(',').map(&:to_i)

    check_number(result)

    result.sum
  end

  private

  def check_number(nums_array)
    negative_nums = nums_array.select { |num| num < 0 }

    if negative_nums.any?
      raise "negative numbers not allowed #{negative_nums.join(',')}"
    end

  end
end
