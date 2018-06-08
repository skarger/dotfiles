File.open('./Gemfile', 'a') do |file|
  file.write("\n")
  file.write("gem 'pry'\n")
end

result = system("bundle install")

if !result
  $stderr.puts("bundle install failed with code #{$?}")
end
