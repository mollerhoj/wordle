a_new = []
a_old = []

f_new = File.open("new.txt").each_line { |line| a_new << line }
f_old = File.open("old.txt").each_line { |line| a_old << line }

puts "new: #{a_new.size}"
puts "old: #{a_old.size}"

File.open("diff.txt", "w") { |f| (a_new - a_old).each { |l| f.write(l) } }
