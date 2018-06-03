require_relative("./drink.rb")
class Bar

  attr_reader :drinks, :name, :till, :stock

  def initialize(name, drinks, till)
    @name = name
    @drinks = drinks
    @till = till
    @stock = stock
  end

  def take_order(drink)
    return @till += drink.price
  end

  def check_stock(drink)

    end
  end























end
