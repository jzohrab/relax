#! /bin/ruby

# Get all the files in the supplied folder.
def list_mp3s_in(folder)
  ret = nil
  Dir.chdir(folder) do
    ret = Dir.glob('*.mp3')
  end
  ret.map { |r| File.join(folder, r) }
end

mp3s = list_mp3s_in('mp3s')

puts mp3s

mp3s.each do |mp3|
  `afplay #{mp3}`
end
