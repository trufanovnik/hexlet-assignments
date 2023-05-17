# frozen_string_literal: true

class VacanciesController < ApplicationController

  def index
    @vacancies = Vacancy.all
  end

  def new
    @vacancy = Vacancy.new
  end

  def create
    @vacancy = Vacancy.new(vacancy_params)

    if @vacancy.save
      redirect_to vacancies_path, notice: 'Vacancy was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # BEGIN
  def update_state
    @vacancy = Vacancy.find params[:id]
    UpdateStateOperation.new.(vacancy: @vacancy, key: params[:aasm_state])
    redirect_to vacancies_path
  end
  # END

  private

  def vacancy_params
    params.require(:vacancy).permit(:title, :description, :aasm_state)
  end
end
