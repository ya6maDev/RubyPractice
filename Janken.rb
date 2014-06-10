class Janken
	attr_accessor :hand
	def initialize
		@hand = ["グー","チョキ","パー"]
	end

	def judge(human,computer)
		puts "あなたの手は" + @hand[human] + "です。"
		puts "コンピュータの手は" + @hand[computer] + "です。"
		var = human - computer
		if var == -1 || var == 2
			puts "あなたの勝ちです"
		elsif var == 1 || var == -2
			puts "あなたの負けです"
		elsif var == 0
			puts "あいこです"
		end
	end
end

result = Janken.new()
puts result.judge(ARGV[0].to_i,rand(0..2).to_i)