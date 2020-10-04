require "csv"

class Plan

  attr_reader :number, :place, :price

  def initialize(**params)
    @number = params[:number]
    @place = params[:place]
    @price = params[:price]
  end

  def self.import(path:)
    CSV.read(path, headers: true).map do |row|
      Plan.new(
        number: row["number"].to_i,
        place: row["place"],
        price: row["price"].to_i
      )
    end
  end

  def index
    "#{@number}. #{@place}旅行（¥#{@price}）"
  end

end
