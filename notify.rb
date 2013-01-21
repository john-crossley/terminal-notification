# Constants
APP_NAME = "PHPUnit Notify"
CLASS_PATH = "lib"
TEST_PATH = "test"

# For the watchr GEM
# watch(CLASS_PATH + '/(.*).php') do |match|
# 	run_tests %{ test/#{match[1]}Test.php }
# end

watch(TEST_PATH + '/.*Test.php') do |match|
	run_tests match[0]
end

# Funcations
def notify title, msg, img
	img_dir = '~/.ttest/img'
	system "growlnotify -n #{APP_NAME} -t '#{title}' -m '#{msg}' --image #{img_dir}/#{img}"
end

def run_tests(file)

	puts "\e[H\e[2J" # Clear the terminal

	unless File.exist?(file)
		puts "#{file} doesn't exist!"
		return
	end

	puts "Testing: #{file}"

	result = `phpunit --colors #{file}` # Terminal time.
	puts result
	if result.match(/OK/)
		notify "#{file}", "Passed!", "green.png"
	elsif result.match(/FAILURES\!/)
		notify_failed file, result
	end

end

def notify_failed cmd, result
	failed_examples = result.scan(/failure:\n\n(.*)\n/)
	notify "#{cmd}", "Failed!\n" + failed_examples[0].to_s, "red.png"
end