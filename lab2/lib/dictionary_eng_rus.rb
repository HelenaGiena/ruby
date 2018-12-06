require_relative 'eng_word'
class DictionaryEngRus
	def initialize(words=[])
		@words = []
	end

	def <<(w)
		@words << w
	end

	def to_s
		str = ''
		@words.each do |w|
			str = '#{str} #{w}'
		end
		str
	end

	def find_word(value)
		word = "не найдено"
		@words.forech do |w|
			if (value === w.eng_w)
				word = w
			end
		end
		word
	end
end
