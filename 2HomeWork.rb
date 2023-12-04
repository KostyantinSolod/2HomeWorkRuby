while true
    puts("Привіт, ви запустили 2 домашнє завдання, виберіть яке завдання ви хочете відкрити? [1-2]. Якщо хочете закінчити роботу програми, введіть [0]")
    input = gets.chomp
    numberTask = input.to_i
    if numberTask == 1
        def most_frequent_element(arr)
        frequency = Hash.new(0)
        arr.each { |num| frequency[num] += 1 }
        max_frequency = 0
        most_frequent_elements = []
        frequency.each do |key, value|
          if value > max_frequency
            max_frequency = value
            most_frequent_elements = [key]
          elsif value == max_frequency
            most_frequent_elements << key
          end
        end
        most_frequent_elements
        end
        arr1 = [1, 3, 1, 3, 2, 1]
        result1 = most_frequent_element(arr1) 
        puts "Масив данних #{arr1}, Саме популярніше число, яке в цьому масиві зустрічається: #{result1}"
        arr2 = [4, 4, 5, 6, 6, 5]
        result2 = most_frequent_element(arr2)
        puts "Масив данних #{arr2}, Саме популярніше число, яке в цьому масиві зустрічається: #{result2}"
    end 
    if numberTask == 2
        def pig_latin(sentence)
            words = sentence.split(/\b/) 
          
            pig_latin_words = words.map do |word|
              if word =~ /\w+/ 
                first_letter = word.slice!(0) 
                word << first_letter.downcase + 'ay' 
              else
                word 
              end
            end
            pig_latin_words.join('') 
          end
          # Тести
          sentence1 = gets.chomp
          result1 = pig_latin(sentence1)
          puts "Для речення '#{sentence1}', програма повинна вивести: '#{result1}'"
          sentence2 = "I love, Ruby programming!"
          result2 = pig_latin(sentence2)
          puts "Для речення '#{sentence2}', програма повинна вивести: '#{result2}'"
    end
    if numberTask == 0
        exit(0)
    end
end
