class Triangle
  
  attr_accessor :side1, :side2, :side3

  def initialize( side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3

  end

  def kind
    valid_triangle

    if side1 == side2 && side2 == side3
      :equilateral
    elsif 
      side1 == side2 || side2 == side3 || side3 == side1
      :isosceles
    else
    :scalene
      end
    end

    def triangle_with_no_sides
      [side1, side2, side3].all?(&:positive?)
    end

    def triangle_inequality
      side1 + side2 > side3 && side2 + side3 > side1 && side3 + side1 > side2
    end
    
    def valid_triangle
      raise TriangleError unless triangle_inequality && triangle_with_no_sides
    end

    class TriangleError < StandardError
    end

end
