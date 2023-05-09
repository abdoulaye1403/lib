############ Partie 1 ###############

diese = "#"
espace = " "
n = 1

puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
number = gets.chomp.to_i

y = number

while n <= number
  y.times do
      print espace
  end

  n.times do
    print diese
  end

  print ("\n")
  y -= 1
  n += 2
end

############ Partie 2 ###############

def ask_number
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
  print "> " #introduire un nombre impair
  number = gets.chomp.to_i
  return number
end

def full_pyramid(number)
  diese = "#"
  espace = " "
  n = 1

  y = number/2

  while n < number # quand n < nombre impair introduit,on met y/2 d'espaces et n #, sachant que le y descend à chaque fois de 1 et le n augente de 2
    y.times do
        print espace
    end

    n.times do
      print diese
    end

    print ("\n")
    y -= 1
    n += 2
  end
end

def wtf_pyramid(number)
  diese = "#"
  espace = " "
  n = 0

  y = number

  while n < number # quand n< nombre impair introduit, on met n fois d'espace et y fois #, sachant que y descend de 2 et n augmente de 1
    n.times do
      print espace
    end

    y.times do
      print diese
    end

    print ("\n")
    y -= 2
    n += 1
  end
end

def perform
  number = ask_number
  full_pyramid(number)
  wtf_pyramid(number)
end

perform