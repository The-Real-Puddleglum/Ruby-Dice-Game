puts "Welcome. Let's jump right in!"
puts "Your escape button is 'O'."
puts "Press 'enter' to begin."
puts "Good Luck!"
question1 = $stdin.gets.chomp
bank_account = 100
while question1 != 'o' do
    if question1 == 'o'
        break
    end
    puts "How many people would you like to play against (1-3)"
    players = $stdin.gets.chomp
    if players == '1'
        puts "OK, this is a 2 person game."
        puts "Your opponent is Frank."
        puts "How much money would you like to put on the table?"
        puts "You have $#{bank_account} in your account."
        player_money1 = gets.to_i
        if player_money1 < 15 && bank_account > 20
            puts "The minimum amount of money you can put"
            puts "on the table is $15. If your account goes"
            puts "under $15, the minimum is $5. Please enter"
            puts "a different amount in. Thank you!"
            player_money1 = gets.to_i
        end
        if bank_account < player_money1
            puts "Sorry, you don't have that money. Please enter"
            puts "A different number. If you do not have any money,"
            puts "Please press N and we will restart the game."
            puts "Otherwise, press any other button. Thanks"
            exit1 = $stdin.gets.chomp
            if exit1 == 'n'
                return exit
            elsif exit1 != 'n'
            end
        end
        opponent_money1 = rand(0...100)
        total_wager1 = player_money1 + opponent_money1
        puts "Frank puts $#{opponent_money1} on the table."
        puts "The total is $#{total_wager1}. Press C to begin"
        start = $stdin.gets.chomp
        if start == 'c'
            my_number1 = rand(0...7)
            my_number2 = rand(0...7)
            my_total1 = my_number1 + my_number2
            enemy_number1 = rand(0...7)
            enemy_number2 = rand(0...7)
            Total1 = enemy_number1 + enemy_number2
            puts "you rolled #{my_number1} and #{my_number2}, for a total of #{my_total1}"
            puts "Frank rolls #{enemy_number1} and #{enemy_number2}, for a total of #{Total1}"
            if my_total1 > Total1
                puts "Congratulations! $#{total_wager1} have been added to your account."
                bank_account += total_wager1
                puts "You now have $#{bank_account} in your account."
            elsif Total1 > my_total1
                puts "You lost. $#{player_money1} have been removed from your account."
                bank_account -= player_money1
                puts "You have $#{bank_account} in your account."
            end
        end
    elsif players == '2'
        puts "OK, this is a 3 person game."
        puts "Your opponents are Frank and Patricia."
        puts "How much money would you like to put on the table?"
        player_money2 = gets.to_i
        if player_money2 < 15 && bank_account > 20
            puts "The minimum amount of money you can put"
            puts "on the table is $15. If your account goes"
            puts "under $15, the minimum is $5. Please enter"
            puts "a different amount in. Thank you!"
            player_money2 = gets.to_i
        end
        if bank_account < player_money2
            puts "Sorry, you don't have that money. Please enter"
            puts "A different number. If you do not have any money,"
            puts "Please press N and we will restart the game."
            puts "Otherwise, press any other button. Thanks"
            exit1 = $stdin.gets.chomp
            if exit1 == 'n'
                return exit
            elsif exit1 != 'n'
            end
        end
        frank_money = rand(0...100)
        patricia_money = rand(0...100)
        total_wager2 = frank_money + patricia_money + player_money2
        puts "Frank put $#{frank_money} on the table"
        puts "Patricia put $#{patricia_money} on the table."
        puts "Total money on the table is $#{total_wager2}"
        puts "To continue press C."
        start2 = $stdin.gets.chomp
        if start2 == 'c'
            my_number3 = rand(0...7)
            my_number4 = rand(0...7)
            enemy_number3 = rand(0...7)
            enemy_number4 = rand(0...7)
            enemy_number5 = rand(0...7)
            enemy_number6 = rand(0...7)
            my_total2 = my_number3 + my_number4
            Total2 = enemy_number3 + enemy_number4
            Total3 = enemy_number5 + enemy_number6
            puts "you rolled #{my_number3} and #{my_number4} for a total of #{my_total2}"
            puts "Frank rolls #{enemy_number3} and #{enemy_number4}, for a total of #{Total2}"
            puts "Patricia rolls #{enemy_number5} and #{enemy_number6} for a total of #{Total3}"
            if my_total2 > Total2 && my_total2 > Total3
                puts "Congratulations! $#{total_wager2} has been added to your account."
                bank_account += total_wager2
                puts "You have $#{bank_account} in your account."
            elsif Total2 > my_total2 && Total2 > Total3
                puts "You lost. $#{player_money2} have been removed from your account."
                bank_account -= player_money2
                puts "You have $#{bank_account} in your account."
            elsif Total3 > my_total2 && Total3 > Total2
                puts "You lost. $#{player_money2} have been removed from your account."
                bank_account -= player_money2
                puts "You have $#{bank_account} in your account."
            end
        end
    elsif players == '3'
        puts "OK, this is a 4 person game."
        puts "Your opponents are Frank, Patricia, and James."
        puts "How much money would you like to put on the table?"
        player_money3 = gets.to_i
        if player_money3 < 15 && bank_account > 20
            puts "The minimum amount of money you can put"
            puts "on the table is $15. If your account goes"
            puts "under $15, the minimum is $5. Please enter"
            puts "a different amount in. Thank you!"
            player_money3 = gets.to_i
        end
        if bank_account < player_money3
            puts "Sorry, you don't have that money. Please enter"
            puts "A different number. If you do not have any money,"
            puts "Please press N and we will restart the game."
            puts "Otherwise, press any other button. Thanks"
            exit1 = $stdin.gets.chomp
            if exit1 == 'n'
                return exit
            elsif exit1 != 'n'
            end
        end
        frank_money = rand(0...100)
        patricia_money = rand(0...100)
        james_money = rand(0...100)
        total_wager3 = frank_money + patricia_money + james_money + player_money3
        puts "OK, you've put $#{player_money3} on the table"
        puts "Frank puts $#{frank_money} on the table."
        puts "Patricia puts $#{patricia_money} on the table."
        puts "James puts $#{james_money} on the table."
        puts "Total money on the table is $#{total_wager3}."
        puts "To continue please press c."
        start3 = $stdin.gets.chomp
        if start3 == 'c'
            my_number5 = rand(0...7)
            my_number6 = rand(0...7)
            my_total3 = my_number5 + my_number6
            enemy_number7 = rand(0...7)
            enemy_number8 = rand(0...7)
            Total4 = enemy_number7 + enemy_number8
            enemy_number9 = rand(0...7)
            enemy_number10 = rand(0...7)
            Total5 = enemy_number9 + enemy_number10
            enemy_number11 = rand(0...7)
            enemy_number12 = rand(0...7)
            Total6 = enemy_number11 + enemy_number12
            puts "you rolled #{my_number5} and #{my_number6} for a total of #{my_total3}"
            puts "Frank rolls #{enemy_number7} and #{enemy_number8} for a total of #{Total4}"
            puts "Patricia rolls #{enemy_number9} and #{enemy_number10} for a total of #{Total5}"
            puts "James rolls #{enemy_number11} and #{enemy_number12} for a total of #{Total6}"
            if my_total3 > Total4 && my_total3 > Total5 && my_total3 > Total6
                puts "Congratulations! $#{total_wager3} have been added to your account."
                bank_account += total_wager3
                puts "You have $#{bank_account} in your account."
            elsif Total4 > my_total3 && Total4 > Total5 && Total4 > Total6
                puts "You lost. $#{player_money3} have been removed from your account."
                bank_account -= player_money3
                puts "You have $#{bank_account} in your account."
            elsif Total5 > my_total3 && Total5 > Total4 && Total5 > Total6
                puts "You lost. $#{player_money3} have been removed from your account."
                bank_account -= player_money3
                puts "You have $#{bank_account} in your account."
            elsif Total6 > my_total3 && Total6 > Total5 && Total6 > Total4
                puts "You lost. $#{player_money3} have been removed from your account."
                bank_account -= player_money3
                puts "You have $#{bank_account} in your account."
            end
        end
    end
end
