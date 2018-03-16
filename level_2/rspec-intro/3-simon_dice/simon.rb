def echo(order)
    order
end

def shout(order)
    order.upcase
end

def repeat(order, num = 2)
    return_arr = []
    num.times do
        return_arr << order
    end
    return_arr.join(" ")
end

def start_of_word(order, num)
    order[0..num - 1]
end

def first_word(order)
    order[0..order.index(" ") - 1]
end

def titleize(order)
    b = order.split(" ")
    b.map! do |s|
        s.eql?('and') || s.eql?('over') || s.eql?('the')  ?  s : s.capitalize
        #s.eql?('and') || s.eql?('over') ?  s : s.capitalize
        #s if s.eql?('the') && s.index('the') >0 
    end
    b.join(" ").to_s
end