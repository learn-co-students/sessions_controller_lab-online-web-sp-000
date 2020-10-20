module SessionsHelper
    def username(username)
        if username != nil
            if username.empty?
                "empty"
            else
                true
            end
        else
            false
        end
    end
end
