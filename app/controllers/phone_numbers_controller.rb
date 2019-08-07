class PhoneNumbersController < ApplicationController
  def index
    @numbers = PhoneNumber.all
  end

  def new
    if params[:generate]
      @number = PhoneNumber.new(number: Faker::PhoneNumber.cell_phone)
    else
      @number = PhoneNumber.new
    end
  end

  def create
    @number = PhoneNumber.create(parsed_params.merge({ user_id: current_user.id }))
    if @number.save
      redirect_to phone_numbers_path
    else
      redirect_to new_phone_number_path
    end
  end

  private

  def parsed_params
    params.require(:phone_number).permit(:number)
  end
end
