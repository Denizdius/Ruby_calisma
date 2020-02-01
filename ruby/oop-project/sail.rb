class Sail
    attr_reader :count

    def initialize(count: )
        set_sail(count)
    end

    private
    def set_sail(count)
        if count > 0
            @count = count
        else
            @count = 0
        end
    end
end