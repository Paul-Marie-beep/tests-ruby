

#En gros, le pooint saoulant c'est la gestion des 0 dans le string donc on fait des cas. 
def time_string(i)
  if i < 10
    return "00:00:0#{i}"
  
  elsif i>9 && i < 61
    return "00:00:#{i}"
  
  elsif i > 60 && i < 600
    if i.remainder(60) < 10
      return "00:0#{i/60}:0#{i.remainder(60)}"
      else 
      return "00:0#{i/60}:#{i.remainder(60)}"
    end
  
  elsif i > 599 && i < 3600
    if i.remainder(60) < 10
      return "00:#{i/60}:0#{i.remainder(60)}"
      else
      return "00:#{i/60}:#{i.remainder(60)}"
    end
  
  elsif i > 3599 && i < 36000
    if i.remainder(3600) < 600 
      j = i.remainder(3600)
      if j.remainder(60) < 10
        return "0#{i/3600}:0#{j/60}:0#{i.remainder(60)}" 
        else
        return "0#{i/3600}:0#{j/60}:#{i.remainder(60)}" 
      end  
    elsif i.remainder(3600) > 600
      j = i.remainder(3600)
      if j.remainder(60) < 10
        return "0#{i/3600}:#{j/60}:0#{i.remainder(60)}" 
        else
        return "0#{i/3600}:#{j / 60}:#{i.remainder(60)}" 
      end 
    end  

  elsif i > 35599  
    if i.remainder(3600) < 600 
      j = i.remainder(3600)
      if j.remainder(60) < 10
        return "#{i/3600}:0#{j/60}:0#{i.remainder(60)}" 
        else
        return "#{i/3600}:0#{j/60}:#{i.remainder(60)}" 
      end  
    elsif i.remainder(3600) > 600
      j = i.remainder(3600)
      if j.remainder(60) < 10
        return "#{i/3600}:#{j/60}:0#{i.remainder(60)}" 
        else
        return "#{i/3600}:#{j / 60}:#{i.remainder(60)}" 
      end 
    end  

    
  end
end





