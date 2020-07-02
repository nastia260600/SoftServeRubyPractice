class Greater
  def great_the_person
    puts "Скажіть будь ласка, як вас звати?"
    name = gets.chomp

      # Слід використати інтерполяцію для виведення фрази
      # "Доброго дня, <ім'я користувача>!"
      #

    puts "Доброго дня, #{name}!"
  end
end
