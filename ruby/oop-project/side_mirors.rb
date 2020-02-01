class Side_Mirors
    attr_reader :count

    def initialize(count: )
        set_side_mirors(count)
    end

    private
    def set_side_mirors(count)
        if count > 0
            @count = count
        else
            @count = 0
        end
    end
end