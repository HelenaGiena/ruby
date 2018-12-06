require_relative 'rus_word'

class DictionaryRusEng
	def initialize(words =[])
	end

	def <<(w)
		@words << w
	end
	
	def to_s
		str = ''
		@words.each do |w|
			str = '#{@str} #{w}'
		end
		str
	end
end