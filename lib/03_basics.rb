

def who_is_bigger(a, b, c)
  if a == nil || b == nil || c == nil
    return "nil detected"
  else
    if a >b && a > c
      return "a is bigger"

    elsif b > a && b > c
      return "b is bigger"

    elsif c > a && c > b
      return "c is bigger"
    end

  
  end
end


def reverse_upcase_noLTA(string)
  rts = string.reverse
  maj_rts = rts.upcase
  maj_rts.delete!"L"
  maj_rts.delete!"T"
  maj_rts.delete!"A"
  return maj_rts
end



def array_42(array)
  i = 0
  array.each do |a|
    if a != 42
      i = i + 1
    end
  end
    if i != array.size
      return true
    else
      return false
    end
  
end

#Pour la question d'avant, ça ça marche aussi bien en fait et pas besoin de faire une boucle
def array_41(array)

  array.include?(41) 
 
end



def magic_array(array)
  arr_flat = array.flatten
  arr_flat_sort = arr_flat.sort
  arr_flat_sort_x2 =  arr_flat_sort.map {|n| n*2}
  arr_flat_sort_x2.delete_if {|number| number % 3 == 0}    
  arr_flat_sort_un = arr_flat_sort_x2.uniq
  arr_flat_sort_un_srt = arr_flat_sort_un.sort
  return arr_flat_sort_un_srt
end
