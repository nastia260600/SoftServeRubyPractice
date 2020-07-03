=begin
    Задано три числа. Повернути найбільше число, яке можна отримати в результаті застосування до даних чисел операцій +, *, ().
    Числа задані в межах від 1 до 10. Числа міняти місцями не можна. Можна використовувати не всі операції (можна їх повторювати).
=end

    puts "Введіть три числа через пробіл в діапазоні від 1 до 10"
    a = gets.chomp
    a = a.split (" ")

    max=0

    while (a[0].to_i < 1 || a[0].to_i > 10) || (a[1].to_i < 1 || a[1].to_i > 10) || (a[2].to_i < 1 || a[2].to_i > 10) do
            puts "Error | Спробуйте ще раз"
            a = gets.chomp
            a = a.split (" ")
    end

    if a[0].to_i > a[1].to_i then
        if a[0].to_i > a[2].to_i then
            max=a[0].to_i*(a[1].to_i+a[2].to_i)
        elsif a[0].to_i < [2].to_i && max==0 then
            max=(a[0].to_i+a[1].to_i)*a[2].to_i
        end
        if a[1].to_i > a[2].to_i && max==0 then
            max=(a[0].to_i+a[1].to_i)*a[2].to_i
        end
    elsif a[0].to_i < a[1].to_i then
        if a[0].to_i < a[2].to_i && max==0 then
            max=(a[0].to_i+a[1].to_i)*a[2].to_i
        elsif a[0].to_i > a[2].to_i && max==0 then
            max=a[0].to_i*(a[1].to_i+a[2].to_i)
        end
    end

    puts max.to_i

