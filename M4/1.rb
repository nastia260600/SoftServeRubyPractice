# Посортувати всі вхідні параметри програми в масиві

# Ви маєте дописати логіку сортування масиву у спадному порядку.

class Calculator
    def sort_incoming_args

    # при запуску скрипту з консолі, аргументи які йдуть після імені файлу попадають в масив ARGV
    puts "Отримані аргументи"
    puts ARGV

    # тут його слід скопіювати в новий масив
    a = []
    ARGV.each {|e| a << e.to_i}

    # тут його слід посортувати в спадаючому напрямку
    a.sort!
    a.reverse!

    # тут його слід вивести
    puts "Посортовані вхідні аргументи: #{a}"

  end
end

#Calculator.new.sort_incoming_args
