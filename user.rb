class User

  def choice(plans)
    plan_number = gets.chomp.to_i

    while plan_number > plans.size || plan_number <= 0
      puts "1〜#{plans.size}の間で入力し直してください"
      plan_number = gets.chomp.to_i
    end

    plan_choice = plans[plan_number - 1]
    puts "#{plan_choice.place}ですね、何人で行きますか？"
    member = gets.chomp.to_i

    while member <= 0
      puts "人数は0人以上にしてください"
      member = gets.chomp.to_i
    end

    if member >= 5
      puts "五人以上なので10%割引となります"
      total_price = (plan_choice.price * member) * 90/100
    else
      total_price = plan_choice.price * member
     end

     puts "合計金額: #{total_price}円"
  end

end