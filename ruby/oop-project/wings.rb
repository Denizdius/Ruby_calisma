class Wings
    attr_reader :count

    def initialize(count)
        set_wings(count)
    end

    private
    def set_wings(count)
        @count = count > 0 ? count : 0
    end
end