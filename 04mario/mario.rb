# This and the next exercise won't have useful comments to guide you.
# Start by thinking in pseudocode which steps you need to do to solve the proble.
# Then, start writing beatuful ruby code! Go for it!
height = 0

until height >= 1 && height <= 8
  print "Pyramid height: "
  height = gets.chomp.to_i
end

(1..height).each do |bricks|
  blanks = height - bricks

  puts (" " * blanks) + ("#" * bricks)
end