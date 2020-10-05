# メソッド課題
require_relative "plan"
require_relative "user"

plans = Plan.import(path: "plans.csv")
user = User.new

puts "旅行プランを選択してください。"

plans.each do |plan|
  puts plan.index
end

user.number(plans)
user.member_sum
user.pay_sum
