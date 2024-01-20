class PublicGraphqlController < ApplicationController
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token

  def execute
    variables = params[:variables]
    query = params[:query]
    operation_name = params[:operationName]
    context = {}

    result = PublicApiSchema.execute(
      query,
      variables:,
      context:,
      operation_name:
    )

    render(json: result)
  end
end
