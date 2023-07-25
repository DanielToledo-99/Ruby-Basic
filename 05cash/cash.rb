# This exercise won't have useful comments to guide you. Go for it!
change = -1
until change.positive?
  print "Change owed: "
  change = gets.chomp.to_f.round(1)
end

change = (change * 100).to_i
coins = 0

soles = change / 100
coins += soles
change -= (soles * 100)

fifty_centimos = change / 50
coins += fifty_centimos
change -= (fifty_centimos * 50)

twenty_centimos = change / 20
coins += twenty_centimos
change -= (twenty_centimos * 20)

ten_centimos = change / 10
coins += ten_centimos

puts coins