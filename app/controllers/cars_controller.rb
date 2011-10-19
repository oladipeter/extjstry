class CarsController < ApplicationController

  def cars_data
    @start = params[:start]
    @limit = params[:limit]
    @cars = Car.find(:all, :offset => @start, :limit => @limit)
    render :json => {:success => true, :cars => @cars}
  end

  def list
    respond_to do |format|
      format.js
    end
  end

  def new
    @car = Car.new
    respond_to do |format|
      format.js
    end
  end

  def delete
    @car = Car.find(params[:id])
    if @car.destroy
      render :json => {:success => true}
    end
  end

  def edit
    @car = Car.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def update
    @car = Car.find(params[:id])
    if @car.update_attributes(params[:car])
    render :json => { :success => true }
    else
      render :json => { :failure => true }
    end
  end

  def create
    @car = Car.new(params[:car])
    if @car.save
      render :json => { :success => true }
    else
      render :json => { :failure => true }
    end
  end

  def list_cars
    respond_to do |format|
      format.js
    end
  end

  def show_car_window
    @row_id = params[:id]
    @car = Car.find(@row_id)
    respond_to do |format|
      format.js
    end
  end

  def show_car_data
    @row_id = params[:id]
    @car = Car.find(@row_id)
    render :xml => { :success=> true, :found_car => @car }
  end

end
