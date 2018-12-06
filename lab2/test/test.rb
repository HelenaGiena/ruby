require_relative '../lib/csv_IO'
require_relative '../lib/dictionary_eng_rus'
require_relative '../lib/dictionary_rus_eng'
require_relative '../lib/rus_word'
require_relative '../lib/eng_word'
require 'pp'



# begin
# 	words << EngWord.new('lol', 'смешно')
#   CsvIO.write_to_csv_eng_rus(File.expand_path('../data/eng_rus.csv', File.dirname(__FILE__)), words)
#   puts words
#   puts File.expand_path('../data/eng_rus.csv', File.dirname(__FILE__))
#   puts "Успешно"
# rescue
#   puts "НЕУСПЕШНА"
# end
	words = CsvIO.read_in_csv_eng_rus(File.expand_path('../data/eng_rus.csv', File.dirname(__FILE__)))
	pp words << EngWord.new('lol', 'смешно')
	
  pp File.expand_path('../data/eng_rus.csv', File.dirname(__FILE__))