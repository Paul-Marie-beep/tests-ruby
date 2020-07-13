
def translate_word(word)

  if  word[0] == "a" || word[0] == "o" || word[0] == "u" || word[0] == "e" # première lettre est une voyelle
    return word+"ay"
  else # La première lettre est une consonne
    if word[1] == "a" || word[1] == "o" || word[1] == "u" || word[1] == "e" #la première lettre 
      #est une consonne et pas la deuxième donc ça ne commence que par une seule consonne
        return word.delete(word[0]) + word[0] + "ay"

    else #la première lettre est une consonne et la deuxième aussi => Le mot commence par deux consonnes
      if word[2] == "a" || word[2] == "o" || word[2] == "u" || word[2] == "e"  #Le mot ne commence que par deux consonnes
     w = word.delete(word[0])
     x = w.delete(w[0])
     return x + word[0]+word[1] + "ay"
      else # le mot commence par trois consonnes
        m = word.delete(word[word.size - 1])
        
        return word.split(//).last(2).join + m + "ay"

      end  
    end
  end
end      


def translate(string)
  taille = string.size
  if taille > 1
  else 
    




  
  

  

  
  
  
  




  
  
  
  
  
  
  
  
  

  