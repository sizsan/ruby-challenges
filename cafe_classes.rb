class Order

    def initialize
        @latte = 6
        @scones = 2
        @tea = 3
    end

    def latte
        @latte += 1
        return self
    end

    def scones 
        @scones += 1
        return self
    end 

    def tea
        @tea += 1 
        return self
    end

    def display_order
        return "You have to make #{@tea} Tea's, #{scones} Scones, #{latte}"
    end
end