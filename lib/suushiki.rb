class Suushiki
  def self.exec(shiki)
    ary = shiki.split(/(\*|\+|\&|\|)/)

    while ary.include?("|") do
      ary.each_with_index do |item, i|
        if item == "|"
          res = (ary[i - 1].to_i | ary[i + 1].to_i)
          ary[i-1..i+1] = res
          ary[ary.index res] = res.to_s
        end
      end
    end

    while ary.include?("&") do
      ary.each_with_index do |item, i|
        if item == "&"
          res = (ary[i - 1].to_i & ary[i + 1].to_i)
          ary[i-1..i+1] = res
          ary[ary.index res] = res.to_s
        end
      end
    end

    while ary.include?("+") do
      ary.each_with_index do |item, i|
        if item == "+"
          res = (ary[i - 1].to_i + ary[i + 1].to_i)
          ary[i-1..i+1] = res
          ary[ary.index res] = res.to_s
        end
      end
    end

    while ary.include?("*") do
      ary.each_with_index do |item, i|
        if item == "*"
          res = (ary[i - 1].to_i * ary[i + 1].to_i)
          ary[i-1..i+1] = res
          ary[ary.index res] = res.to_s
        end
      end
    end

    ary[0]
  end
end
