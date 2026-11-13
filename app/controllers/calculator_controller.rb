class CalculatorController < ApplicationController

  def index

  end

  def calculate

    if params[:num1].blank? || params[:num2].blank? || params[:operation].blank?
      @error = "Please enter all values"
    else
      @num1 = params[:num1].to_i
      @num2 = params[:num2].to_i
      @operation = params[:operation]

      case @operation
      when "+"
        @result = @num1 + @num2

      when "-"
        @result = @num1 - @num2

      when "*"
        @result = @num1 * @num2

      when "/"
        if @num2 == 0
          @error = "Division by zero is not allowed"
        else
          @result = @num1 / @num2
        end

      else
        @error = "Invalid operation"
      end
          render :index

    end

  end

end
