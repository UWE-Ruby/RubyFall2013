# au jonas haskins
class Calculator
        def sum(digits)
                digits.inject 0, :+
        end

        def pow(v1, v2)
                p = 1
                       v2.times{ p *= v1 } 
                power = p                        
        end

        def multiply(*nums)
                  nums.flatten.inject(:*)  
        end

        def fac(number) 
                (1..number).inject(:*) || 1        
        end
end
