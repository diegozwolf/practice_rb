$currency_hash={usd: {cop:2900},cop:{usd:0.00035}}

def curr_converter(cur1,cur2,amount)
    if ((cur1 == 'usd')&&(cur2=='cop'))
            conversion = $currency_hash[:usd][:cop]* amount
        elsif  ((cur1 == 'cop')&&(cur2=='usd'))
            conversion = $currency_hash[:cop][:usd]* amount
        else
            conversion = 0
    end
end



puts 'what currency do you want to convert usd or cop'
original_cur= gets.chomp

puts ' what currency do you want to convert it in to, usd or cop'
second_cur= gets.chomp

puts ' what is the amount?'
money_to_convert= gets.chomp.to_f


puts curr_converter(original_cur,second_cur,money_to_convert)
