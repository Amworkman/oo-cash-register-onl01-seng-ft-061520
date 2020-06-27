class CashRegister
    attr_accessor :total, :discount

    

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @all_items = []
    end

    def total
        total = @total
    end

    def add_item(title, price, quantity = 1)
        if quantity > 1 
            i = 0
            while i < quantity 
            @all_items << title
            i += 1
            end
        else
        @all_items << title
        end
        @total = (@total.to_f) + (price * quantity)
        @last_trans = price * quantity
        @total
    end

    def apply_discount
        if @discount > 0
        @discount = @discount / 100.to_f
        @total = @total - (@total * @discount)
        "After the discount, the total comes to $#{@total.to_i}."   
        else
            "There is no discount to apply."   
        end 
    end

    def items 
        @all_items
    end

    def void_last_transaction
        @total -= @last_trans
    end



end

