require "pry"

class CashRegister

  attr_accessor :total, :quantity, :discount, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @@all = []
    @last_transaction = 0
  end

  def add_item(title, price, quantity = 1)
    @last_transaction = price
    @total += price * quantity
    quantity.times {@@all << title}
  end

  def apply_discount
      if discount == 0
        "There is no discount to apply."
      else
        @discount = discount * 10
        @total -= @discount
        "After the discount, the total comes to $#{@total}."
      end
  end

  def items
    @@all
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
