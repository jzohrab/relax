#! /bin/ruby

folder, pause = ARGV

# Get all the files in the supplied folder.
def mp3s_in(f)
  ret = nil
  Dir.chdir(f) do
    ret = Dir.glob('*.mp3')
  end
  ret.map! { |r| File.join(f, r) }
  ret.shuffle!
  ret
end

mp3s = mp3s_in(folder)

puts "Files to be played:"
mp3s.each { |m| puts "- #{m}" }
puts

i = 0
while true
  sleep(pause.to_f)
  index = i % mp3s.size
  fname = mp3s[index]
  puts "File #{index} of #{mp3s.size}: #{fname}"
  `afplay #{fname}`
  i += 1
end
