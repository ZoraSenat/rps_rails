class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here
    # Rock, Paper, Scissors


    # In the end, make sure you assign the correct values to the
    #   following two variables:

    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
      @result = "Tie!"
    else
      if (@user_move == "rock" and @computer_move == "scissors")  or (@user_move == "paper" and @computer_move == "rock") or (@user_move == "scissors" and @computer_move == "paper")
        @result = "Win!"
      else
        @result = "Lose!"
      end
    end
      # ===============================================================
      # Your code goes above.
      # ===============================================================

      render("rps.html.erb")

    end
  end
