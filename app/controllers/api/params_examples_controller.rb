class Api::ParamsExamplesController < ApplicationController

  def query_params_action
    @my_message = params["language"]
    render "query_params.json.jb"
  end

  def name_action
    @name = params["name"].upcase
    @message = @name
    if @name.starts_with?("A")
      @message = "Hey your name starts with A!"
    end
    render "name.json.jb"
  end

  def guess_query_action
    user_guess = params["guess"].to_i
    winning_number = 42
    if user_guess > winning_number
      @message = "Too high!"
    elsif user_guess < winning_number
      @message = "Too low!"
    else
      @message = "You win!"
    end
    render "guess_query.json.jb"
  end

  def segment_params_action
    my_value = params["purple_hippo"]
    @message = "The url segment is #{my_value}"
    render "segment_params.json.jb"
  end


end
