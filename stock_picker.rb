$price_array = [17,3,6,9,15,8,6,1,10]

def stock_picker
$lowest_price = $price_array[0]
profit = 0
result = []
$max_price = 0
$buy_day = 0
$day_sell = 1

$price_array.each_with_index {|price_min, day_min|
if day_min <= $day_sell && price_min < $lowest_price 
   $lowest_price = price_min
   $buy_day = day_min
end

$price_array.each_with_index{|price_max, day_max|
if day_max > day_min && $lowest_price < price_max && price_max > $max_price 
$max_price = price_max
$day_sell = day_max
end
}

}
p result = [$buy_day, $day_sell]
end 

stock_picker

