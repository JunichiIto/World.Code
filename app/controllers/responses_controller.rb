class ResponsesController < ApplicationController
  before_action :set_submit
  before_action :set_response
  def create
    @response = @submit.responses.build(response_params)

    if @response.save
      redirect_to submit_path(@submit)
    else
      render template: "submit/show"
    end
  end

  private
    def set_submit
      @submit = Submit.find(params[:submit_id])
    end
    
    def set_response
      @response = @submit.responses.find(params[:id])

    def response_params
      params.require(:response).permit(:content)
    end
end
