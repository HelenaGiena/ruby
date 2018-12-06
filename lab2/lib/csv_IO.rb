require "csv"
require_relative 'eng_word'
require_relative 'rus_word'
require_relative 'dictionary_eng_rus'
require_relative 'dictionary_rus_eng'

module CsvIO
	def self.read_in_csv_eng_rus(filename)
		words = DictionaryEngRus.new
		CSV.foreach (filename, headers: true) do |row|
			words<<EngWord.new(row['eng_w'], row['rus_trans'])
		end
		words
	end

	def self.read_in_csv_rus_eng(filename)
		words = DictionaryRusEng.new
		CSV.foreach (filename) do |row|
			words << RusWord.new(row['rus_w'], row['eng_trans'])
		end
		words
	end
end