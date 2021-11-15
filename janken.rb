puts "じゃんけん..."
	#じゃんけんの配列
def poi
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    @playerside = gets.to_i
    @pcside = rand(3) # ランダムでpcが出す
    @hand = ["グー","チョキ","パー"]
    puts "ホイ！"
    puts "-----------------"
   if @drawer = @playerside == @pcside # 分岐文(あいこの場合)
	  puts "あなた：#{@hand[@playerside]}を出しました"
	  puts "相手：#{@hand[@pcside]}を出しました"
	  puts "あいこで〜"
      return true
    elsif @loser = (@playerside == 0 && @pcside == 2) || (@playerside == 1 && @pcside == 0) || (@playerside == 2 && @pcside == 1) # 分岐文(負けの場合)
	  puts "あなた：#{@hand[@playerside]}を出しました"
	  puts "相手：#{@hand[@pcside]}を出しました"
      # 負けたら「顔」を向けるverのあっちむいてホイ！開始
      puts "あっちむいて〜"
	  puts "「顔」を向ける方向を決めてください"
	  puts "0(上)1(下)2(左)3(右)"
	  @playerlook = gets.to_i
      @pclook = rand(4)
	  @look = ["上","下","左","右"]
      puts "ホイ！"
	  puts "-----------------"
	    case @loser
	    when @pclook == @playerlook # 同じ方向を向いたら負け
		    puts "あなた：#{@look[@playerlook]}"
	        puts "相手：#{@look[@pclook]}"
	        puts "残念!!!あなたの負けです!"
	        return false
	    else
		    puts "あなた：#{@look[@playerlook]}" # 違う方向を向いったらじゃんけんに戻る
		    puts "相手：#{@look[@pclook]}"
		    puts "じゃんけん..."
		    return true
	    end
    elsif @winner = (@playerside == 0 && @pcside == 1) || (@playerside == 1 && @pcside == 2) || (@playerside == 2 && @pcside == 0) # 分岐文(勝ちの場合)
	  puts "あなた：#{@hand[@playerside]}を出しました"
	  puts "相手：#{@hand[@pcside]}を出しました"
	  # 勝ったら「指」を向けるのあっちむいてホイ！開始
	  puts "あっちむいて〜"
	  puts "「指」を向ける方向を決めてください"
      puts "0(上)1(下)2(左)3(右)"
	  # あっち向いてホイ!の配列
	  @playerlook = gets.to_i
      @pclook = rand(4)
	  @look = ["上","下","左","右"]
      puts "ホイ！"
	  puts "-----------------"
	    case @winner
	    when @playerlook == @pclook # 同じ方向を向いたら勝ち
		    puts "あなた：#{@look[@playerlook]}"
	        puts "相手：#{@look[@pclook]}"
	        puts "おめでとう!!!あなたの勝ちです!"
	        return false
	    else
		    puts "あなた：#{@look[@playerlook]}" # 違う方向を向いったらじゃんけんに戻る
		    puts "相手：#{@look[@pclook]}"
		    puts "じゃんけん..."
		    return true
	    end
    else @playerside == 3 # 戦わない場合
	  puts "終了ボタンが押されました"
      puts "じゃんけんを終了します"
      return false
    end
end

draw = true
while draw do
    draw = poi
end
