class Wheel_drive
    attr_reader :type

    def initialize(wheel_drive_type = '')
        if valid_wheel_drive_type?(wheel_drive_type)
            @type = wheel_drive_type.capitalize
        else
            wheel_drive_type == '' ? @type = nil : (raise InvalidWheelDriveTypeError)
        end
    end

    private 
    
    def valid_wheel_drive_type?(type)
        %w[4x2 awd rwd 4x4].include? type.downcase
    end
end

class InvalidWheelDriveTypeError < StandardError
    def message
        "Invalid wheel_drive type. Check your enterings."
    end
end