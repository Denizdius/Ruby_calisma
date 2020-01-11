class Wings
    attr_reader :count

    def initialize(count: )
        set_wings(count)
    end

    private
    def set_wings(count)
        if count > 0
            @count = count
        else
            @count = 0
        end
    end
end