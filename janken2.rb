class Player
  def hand
    puts "数字を入力してください。"
    puts "0:グー、1:チョキ、2:パー"

    my_hand = gets.to_i

    while true
      if my_hand == 0 || my_hand == 1 || my_hand == 2
        return my_hand
      else
        puts "もう一度数字を入力してください。"
        puts "0:グー、1:チョキ、2:パー"

        my_hand = gets.to_i
      end
    end
  end
end

class Enemy
  def hand
    ramdom_hand = [0, 1, 2]
    enemy_hand = ramdom_hand.sample
  end
end

class Janken
  def pon(my_hand, enemy_hand)
    janken = ["グー", "チョキ", "パー"]

    puts "相手の手は#{janken[enemy_hand]}です。"

    while true
      if (my_hand - enemy_hand) % 3 == 0
        puts "あいこです。"
        return true
      elsif (my_hand - enemy_hand) % 3 == 2
        puts "あなたの勝ちです。"
        break
      else
        puts "あなたの負けです。"
        break
      end
    end
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

next_game = true

while next_game
  next_game = janken.pon(player.hand, enemy.hand)
end
