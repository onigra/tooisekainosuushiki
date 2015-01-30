class Suushiki
  OPERATORS = %w(| & + *)

  def initialize(formula)
    @list = formula.split(/(\*|\+|\&|\|)/)
  end

  def calc
    OPERATORS.each { |i| my_eval i }
    @list[0]
  end

  def my_eval(operator)
    while @list.include?(operator) do
      @list.each_with_index do |item, i|
        if item == operator
          res = eval "#{@list[i - 1]} #{operator} #{@list[i + 1]}"
          @list[(i - 1)..(i + 1)] = res.to_s
        end
      end
    end
  end
end
