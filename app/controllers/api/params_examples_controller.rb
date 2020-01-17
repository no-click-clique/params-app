class Api::ParamsExamplesController < ApplicationController

  def query_params_action
    @my_message = params["language"]
    render "query_params.json.jb"
  end

end
