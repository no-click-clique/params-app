Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/query_params_url" => "params_examples#query_params_action"
    get "/name_url" => "params_examples#name_action"
    get "/guess_query_url" => "params_examples#guess_query_action"

    get "/segment_params_url/:purple_hippo" => "params_examples#segment_params_action"

    get "/guess_segment_url/:guess" => "params_examples#guess_query_action"

    post "/body_params_url" => "params_examples#body_params_action"
  end
end

