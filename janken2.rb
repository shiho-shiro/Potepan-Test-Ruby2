puts "じゃんけん..."
class Janken
	def poi
		puts "0(グー)1(チョキ)2(パー)3(戦わない)"
		@playerside = gets.to_i
		@pcside = rand(3) # ランダムでpcが出す
		@hand = ["グー","チョキ","パー"]
		puts "ホイ！"
		puts "-----------------"
		if @playerside == @pcside # 分岐文(あいこの場合)
			puts "あなた：#{@hand[@playerside]}を出しました"
			puts "相手：#{@hand[@pcside]}を出しました"
			puts "あいこで〜"
			return true
		elsif @loser = (@playerside == 0 && @pcside == 2) || (@playerside == 1 && @pcside == 0) || (@playerside == 2 && @pcside == 1) # 分岐文(負けの場合)
			puts "あなた：#{@hand[@playerside]}を出しました"
			puts "相手：#{@hand[@pcside]}を出しました"
			puts "じゃんけんに負けしました"
			puts "-----------------"
		elsif @winner = (@playerside == 0 && @pcside == 1) || (@playerside == 1 && @pcside == 2) || (@playerside == 2 && @pcside == 0) # 分岐文(勝ちの場合)
			puts "あなた：#{@hand[@playerside]}を出しました"
			puts "相手：#{@hand[@pcside]}を出しました"
			puts "じゃんけんに勝ちました"
			puts "-----------------"
		else @playerside == 3 # 戦わない場合
			puts "終了ボタンが押されました"
			puts "じゃんけんを終了します"
			puts "-----------------"
			return false
		end
	end
	def looks
		puts "あっちむいて〜"
		puts "方向を決めてください"
		puts "0(上)1(下)2(左)3(右)"
		@playerlook = gets.to_i
		@pclook = rand(4)
		@look = ["上","下","左","右"]
		puts "ホイ！"
		puts "-----------------"
		case @winner
		when @pclook == @playerlook # 同じ方角だった時は勝ち
			puts "あなた：#{@look[@playerlook]}"
			puts "相手：#{@look[@pclook]}"
			puts "おめでとう!!!あなたの勝ちです!"
			return false
		when @pclook != @playerlook # 同じ方向じゃなかった時はtrueでじゃんけんに戻る
			puts "あなた：#{@look[@playerlook]}"
			puts "相手：#{@look[@pclook]}"
			puts "じゃんけん..."
			return true
		end
		case @loser
		when @pclook == @playerlook # 同じ方角だった時は負け
			puts "あなた：#{@look[@playerlook]}"
	    	puts "相手：#{@look[@pclook]}"
	    	puts "残念!!!あなたの負けです!"
	    	return false
		when @pclook != @playerlook # 同じ方向じゃなかった時はtrueでじゃんけんに戻る
			puts "あなた：#{@look[@playerlook]}"
			puts "相手：#{@look[@pclook]}"
			puts "じゃんけん..."
			return true
		end
	end
end

janken = Janken.new
janken.looks

draw = true
while draw
	draw = janken.poi
end

