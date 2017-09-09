class Pi < ApplicationRecord

    def self.random_number(length)
        rand(length + 1)
    end

    def self.get_snippet(snippets)
        used_numbers = []
        id = 0
        valid = false
        while !valid
            num = Pi.random_number(snippets.last.id)
            if !(used_numbers.include? num) && (Snippet.exists?(num))
                id = num
                valid = true
                used_numbers.push num
            end
        end

        if used_numbers.length == snippets.length
            used_numbers = []
        end
        id
    end

    def self.snippet(id)
        Snippet.find(id)
    end
    
end