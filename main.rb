# メソッド課題
require_relative "plan"
require_relative "user"

plans = Plan.import(path: "plans.csv")
user = User.new

puts "旅行プランを選択してください"

plans.each do |plan|
  puts plan.index
end

number = user.number(plans)
member = user.member_sum(number)
user.pay_sum(number, member)
