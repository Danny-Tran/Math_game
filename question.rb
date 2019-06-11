class Question
    def initialize 
        @num_left = rand(1..20)
        @num_right = rand(1..20)
    end

    def ask_question?
       @question = "What is the total of #{@num_left} and #{@num_right}"
    end

    def correct_answer? answer
      answer == @num_left + @num_right
    end

end
