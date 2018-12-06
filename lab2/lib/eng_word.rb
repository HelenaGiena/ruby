class EngWord
	def initialize(eng_w, rus_trans)
		@eng_w = eng_w
		@rus_trans = rus_trans
	end

	def values
		[@eng_w, @rus_trans]
	end

	def to_s
		"
		английское слово: #{@eng_w}
		перевод: #{@rus_trans}
"
	end
end