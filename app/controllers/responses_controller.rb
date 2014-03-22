class ResponsesController < ApplicationController
  before_action :set_submit
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

    def response_params
      params.require(:response).permit(:content)
    end
end
