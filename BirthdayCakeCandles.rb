# Url: https://www.hackerrank.com/challenges/birthday-cake-candles/problem
# You are in charge of the cake for your niece's birthday and have decided the cake 
# will have one candle for each year of her total age. When she blows out the candles, 
# she’ll only be able to blow out the tallest ones. Your task is to find out how many 
# candles she can successfully blow out.

def birthdayCakeCandles(ar)
    sorted = ar.sort_by { |num| num}
    candles = 1
    i = sorted.length - 1 
    while i > 0
        if sorted[i] == sorted[i-1]
          candles += 1
        else
          return candles
        end
        i -= 1
    end
    return candles
end