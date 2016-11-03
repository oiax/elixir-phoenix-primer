t = Thread.new do
  sleep(1)
  puts "Finished!"
end

t.join
