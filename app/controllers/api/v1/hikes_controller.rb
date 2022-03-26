class Api::V1::HikesController < ApplicationController
  def index
    render json: HikeSerializer.new(Hike.all)
  end

  def create
    require "pry"; binding.pry
    if params[:csv].present?
      CSV.foreach(params[:csv].path, headers: true) do |row|
        hike = Hike.create(row.to_h)
        if !hike.save
          invalid_attributes
        end
      end
    end
    render json: {"data": {"message": "Successfully created"} }, status: 201
  end

  private

  def invalid_attributes
    render json: {"data": { "message": "Invalid Attributes"} }
  end
end
