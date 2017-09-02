class FactsController < ApplicationController
  def index
    @facts = Fact.all
  end

  def create
    @fact = Fact.new(fact_params)

    if @fact.save
      render json: @fact
    else
      render json: @fact, status: :unprocessable_entity
    end
  end

  private
    def fact_params
      params.require(:fact).permit(:date, :description, :src, :technical)
    end
end
