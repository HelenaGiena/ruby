class RusWord
	def initialize(rus_w, eng_trans)
		@rus_w = rus_w.downcase
		@eng_trans = eng_trans.downcase
	end

	def values
		[rus_w, eng_trans]
	end

	def to_s
		"
		русское слово: #{@rus_w}
		перевод: #{@eng_trans}
"
	end
end