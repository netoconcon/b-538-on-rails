class PagesController < ApplicationController
  def about

  end

  def home
    user_input_letter = params[:letter]
    user_input_number = params[:length]

    @beatles = ["John", "Paul", "Ringo", "George"]

    if user_input_letter
      @beatles = @beatles.select { |beatle| beatle.start_with?(user_input_letter) }
    end

    if user_input_number
      @beatles = @beatles.select { |beatle| beatle.size > user_input_number.to_i }
    end
  end
end
