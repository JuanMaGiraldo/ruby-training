symbol = :key
string = "key"

hash = {symbol=> 1, string=> 2}

p hash.include?(symbol)

symbol = :key2

p hash.include?(symbol)

hash.rehash
p hash
p hash[:key2]
