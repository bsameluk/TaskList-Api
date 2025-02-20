class GraphqlController < ApplicationController

  def execute
    variables = prepare_variables(params[:variables])
    query = params[:query]
    operation_name = params[:operationName]
    context = {}

    result = TaskListAppSchema.execute(query, variables: variables, context: context, operation_name: operation_name)
    render json: result
  end

  private

  def prepare_variables(variables_param)
    case variables_param
    when String
      JSON.parse(variables_param) rescue {}
    when ActionController::Parameters
      variables_param.to_unsafe_h
    when Hash
      variables_param
    else
      {}
    end
  end

end
