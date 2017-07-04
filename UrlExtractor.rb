

input_file_name = ARGV[0]

input_file = File.read(input_file_name)

urls = input_file.split(/\s+/).find_all { |a| a =~ /^https?:/ }



puts "Name of the destination file: "
dest_name = STDIN.gets


dest_file = File.new("#{dest_name}.txt", "w+")

dest_file.puts urls
