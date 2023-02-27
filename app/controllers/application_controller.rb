class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================

  def homepage 
    render({ :template => "game_templates/rules.erb"})
  end
  
  def play_rock
  
    #redirect_to("https://www.wikipedia.org")

    render({ :template => "game_templates/user_rock.html.erb"})
  end
  
  def play_paper 

      comp_move = ["rock", "paper", "scissors"].sample 

      if comp_move == "rock"
        We tied!
      elsif comp_move == "paper"
        We lost!
      elsif comp_move == "scissors" 
        We won!
      end

    render({ :template => "game_templates/user_paper.html.erb"})
  end 

end
