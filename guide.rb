
def menuSee()
    puts "1) Add menu"
    puts "2) Delete menu"
    puts "3) Find menu"
    puts "4) See menu"
    puts "5) Exit"
  end
  
  def addPeople(guide)
    people = Hash.new
    puts 'Name: '
    people['name'] = gets
    puts 'Surname: '
    people['surname'] = gets
    puts 'Telephone: '
    people['telephone'] = gets.to_i
    puts 'age: '
    people['age'] = gets.to_i
   guide.append(people)
    puts "Succesfull add people."
  end
  
  def viewGuide(guide)
    n = guide.length()
    for i in 0..(n-1)
      people = guide[i]
      puts "#{i+1}. people"
      puts "Name: #{people['name']}"
      puts "Surname: #{people['surname']}"
      puts "Telephone: #{people['telephone']}"
      puts "Age: #{people['age']}"
      puts "-----------------------------"
    end
  end
  
  def deletePeople(guide)
    n = guide.length()
    for i in 0..(n-1)
      people = guide[i]
      puts "#{i+1}. people:"
      puts "#{people['name']} #{people['surname']}"
    end
    puts "Which person do you want to delete?"
    choice = gets.to_i
    guide.delete_at(choice-1)
    puts "Succesfull delete people."
  end
  
  def findPeople(guide)
    puts 'Find word:'
    word = gets
    n = guide.length()
    for i in 0..(n-1)
     people = guider[i]
      if people['name'].include? word
        puts "#{i+1}. people"
        puts "Name: #{people['name']}"
        puts "Surname: #{people['surname']}"
        puts "Telephone: #{people['telephone']}"
        puts "Age: #{people['age']}"
        puts "-----------------------------"
      end
    end
  end
  guide = Array.new

  
  loop do
    menuSee()
    puts 'Choice: '
    choice = gets.to_i
    if choice == 1
      addPeople(guide)
      deletePeople(guide)
    elsif choice == 3
      findPeople(guide)
    elsif choice == 4
      viewGuide(guide)
    elsif choice == 5
      break
    end
  end
  
  puts "Exit."
