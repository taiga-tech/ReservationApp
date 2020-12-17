# frozen_string_literal: true

class CalculationsController < ApplicationController
  before_action :authenticate_staff!

  def edit
  end

  def update
    if @calculation.update(calculation_params)
      render :update
    else
      render :edit
    end
  end

  private

  def calculation_params
    params.require(:calculation).permit(:tax, :discount)
  end
end
