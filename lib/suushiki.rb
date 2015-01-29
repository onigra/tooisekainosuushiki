class Suushiki
  LIST = %w(| & + *)

  def initialize(shiki)
    @ary = shiki.split(/(\*|\+|\&|\|)/)
  end

  def calc
    LIST.each { |i| exec i }
    @ary[0]
  end

  private

  def exec(x)
    while @ary.include?(x) do
      @ary.each_with_index do |item, i|
        if item == x
          res = eval "#{@ary[i - 1]} #{x} #{@ary[i + 1]}"
          @ary[i-1..i+1] = res.to_s
        end
      end
    end
  end
end
