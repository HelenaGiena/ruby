require_relative 'csv_IO'
require_relative 'dictionary_eng_rus'
require_relative 'dictionary_rus_eng'

module Interface
	mode = 0
	PATH_ER = File.expand_path('../data/eng_rus.csv', File.dirname(__FILE__))

	def self.main_start
		puts '--СЛОВАРЬ--'
		loop do
			start_menu
			menu_answer
		end
	end

	def self.start_menu
		puts '[0] Выбор режима перевода'
		puts '[1] Перевод с синонимами'
		puts '[2] Список слов с переводом на заданную букву или буквосочетание'
		puts '[3] Перевод по последовательности слов'
		puts '[4] Выход'
	end

	def self.answer
		gets.chomp.to_i
	end

	def self.menu_answer
		case answer
		when 0
			mode_zero
		when 1
			# --> перевод с синонимами
			mode_one
		when 2
			# --> список по букве/соч
			mode_two
		when 3
			# --> перевод по послед
			mode_three
		when 4
			# --> выход
			mode_four
		else
			puts 'Не найдено'
		end
	end

	def self.mode_zero
		puts '[0] с русского на английский'
		puts '[1] с английского на русский'
		mode_zero_answer
	end

	def self.mode_zero_answer
		case answer
		when 0
			mode = 0
			waiting
		when 1
			mode = 1
			waiting
		else
			puts 'Не найдено'
		end			
	end

	def self.waiting
		puts @mode===0? 
		'Выбран режим перевода с русского на английский':
		'Выбран режим перевода с английского на русский'
		puts '-Для продолжения введите любой символ-'
		answer
		puts 'Продолжите..'
	end

	def self.mode_one
		#
		puts 'Введите слово'
		puts PATH_ER
		#dict = CsvIO.read_in_csv_eng_rus(PATH_ER)
		#puts dict.find_word(answer)
	end
		
	def self.mode_two
		#
	end

	def self.mode_three
		#
	end

	def self.mode_four
		exit
	end
end