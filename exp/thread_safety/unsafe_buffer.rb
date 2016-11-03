class LimitedBuffer
  attr_reader :value

  def initialize
    @value = String.new
  end

  def append(char)
    if @value.length < 3
      sleep(rand)
      @value << char
    end
  end
end

lb = LimitedBuffer.new

threads = []

%w(a b c d e).each do |char|
  threads << Thread.new do
    lb.append(char)
  end
end

threads.each { |t| t.join }

puts lb.value
