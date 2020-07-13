
def echo(string)
  return string
end

def shout(string)
  return string.upcase
end

#Attention, la variable optionnelle *p est condidérée nom comme un nombre mais comme un tableau. D'où les conditions et la nécessité de l'extraire
def repeat(string, *p)
  if p == []
    return string + " " + string
 
  else
  return  string +  (" " + string) * (p[0]-1)
  end
end

#Pour avoir les p premières lettres d'un mot
def start_of_word(string, p)
  mot = ""
for i in (0..p-1)
mot= mot + string[i]
end
return mot
end

#Pour avoir le premier mot d'une phrase
def first_word(string)
  string.split.first
end

#Pour mettre en capitale la première lettre de chaque mot. 
def titleize(string)
  #On met la première lettre de chaque mot en majuscule
new_string = string.split.map(&:capitalize).join(' ')
# Si un mot fait moins de 4 lettres on le met en minuscule (totalement mais comme seule la première lettre est en majuscule)
array = new_string.split
array.each do |mot|
  if mot.size < 4
    mot = mot.downcase!
  end
end
#On prend le premier mot de la sring et on met la première lettre en majuscule
array[0] = array[0].capitalize
title = array.join(' ')
return title 
end










