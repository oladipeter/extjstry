class EmployeesController < ApplicationController

  def show
    @employee = Employee.find(params[:id])
    render :json => { :form_employee => @employee }
  end

  def create
    @employee = Employee.new(params[:employee])
    if @employee.save
      render :json => {:success => true}
    else
      render :json => {:failure => true}
    end
  end

  def update
    @employee = Employee.find(params[:id])

    respond_to do |format|
      if @employee.update_attributes(params[:employee])
        format.html { redirect_to(@employee, :notice => 'Employee was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @employee.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    if @employee.destroy
      render :json => {:success => true }
    else
      render :json => {:failure => true }
    end
  end

  # EXTJS --

  def show_employees_list_window
  end

  def show_employees_add_window
  end

  def show_employees_modify_window
  end

  def all_employees
    @all_employees = Employee.find(:all)
    render :json => { :all_employees => @all_employees }
  end
end
