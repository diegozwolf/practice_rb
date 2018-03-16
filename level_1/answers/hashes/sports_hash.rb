a = 'tenis'
sports = {granger: ['water polo', 'crossfit', 'soccer'], matt: ['soccer', 'basketbal','footbal'], diego: ['box','mma']}

sports.each do |key,value|
    puts key if value.include? 'soccer'
end