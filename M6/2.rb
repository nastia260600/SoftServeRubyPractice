﻿# Програма для використання коду Цезаря
# Цей вид кодування є дуже простим. Зображемо
# англійський алфавіт у кільці, де перед буквою a
# стоїть буква z. Суть полягає в тому,
# щоб переставити всі букви в слові на n вліво,
# або в право в кільці алфавіту.

# код англійської букви a маленької = 97
# код англійської букви z маленької = 122
# код букви у кодувальній таблиці можна отримати
# за допомогою функції String.ord()
# Зворотня дія - функція String.chr()

# Ви маєте застосувати функції String.org та Integer.chr
# для, відповідно, отримання коду символу та отримання символу
# згідно його коду у таблиці ASCII
# ( http://uk.wikipedia.org/wiki/ASCII ).
# І також, зреалізувати коду з назвою get_pair.
#

class Calculator

  # функція normalize - перетворюватиме символи
  # в код та нормалізуватиме їх діапазон від 1 до 26
  #
  # normilize a  => 1
  # normilize z  => 26
  def normalize a
    return a.ord.to_i - 96
  end

  # функція denormilize - перетворюватиме символи
  # в код та нормалізуватиме їх діапазон від 97 до 122
  #
  # denormilize a  => 97
  # denormilize z  => 122
  def denormilize a
    return (a + 96).chr
  end

  # функція get_pair реалізує "кільце" чисел
  # від 1 до 26. Якщо число більше за верхню
  # межу, від до нього її віднімають. У випадку
  # коли аргумент менший за найменшу - додаємо
  # туж верхню межу. Це змушує отримати результат
  # у вказаному діапазоні.
  #
  # get_pair -10  => 16
  # get_pair 13   => 13
  # get_pair 34   => 8
  def get_pair a
    if a > 26
      return a - 26
    elsif a < 1
      return a + 26
    end
    a
  end

  # функція для кожного рядка з малих англійських букв
  # та ключа зсуву будує код Цезаря та кодує повідомлення.
  # кожен символ ми маємо нормалізувати до числа від 1 до 26
  # застосувати додатній зсув та отримати код символу-еквіваленту
  # далі отримане число денормалізуємо та дописуємо знак в результуючий рядок
  def encode a, key
    res = ""
    a.each_char { |e|
      tmp1 = normalize e
      tmp2 = get_pair(tmp1 + key % 26)
      tmp3 = denormilize tmp2
      res += tmp3
    }
    res
  end

  # функція для кожного рядка з малих англійських букв
  # та ключа зсуву будує код Цезаря та кодує повідомлення.
  # кожен символ ми маємо нормалізувати до числа від 1 до 26
  # застосувати від'ємний зсув та отримати код символу-еквіваленту
  # далі отримане число денормалізуємо та дописуємо знак в результуючий рядок
  def decode a, key
    res = ""
    a.each_char { |e|
      tmp1 = normalize e
      tmp2 = get_pair(tmp1 - key % 26)
      tmp3 = denormilize tmp2
      res += tmp3
    }
    res
  end
