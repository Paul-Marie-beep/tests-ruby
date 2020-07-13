def add(x,y)
  return x + y
end

def subtract(x,y)
  return x - y
end

def sum(array)
  sum = 0
  array.each do |a| 
    sum = sum + a
  end
  return sum
end

def multiply(x,y)
  return x * y
end

def power(x,y)
  return x**y
end

def factorial(x)
  if x.to_i == 0
    return 1
  else
    product = x
    for i in (1..(x-1))
      product = product * (x - i)
      end
      return product
    end
  end
