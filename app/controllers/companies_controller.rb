class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def create
    company = Company.new(company_params)

    if company.valid? && company.save!
      @company = Company.new
      flash[:notice] = 'Company create successed'
    else
      flash[:alert] = company.errors.full_messages.join('; ')
    end
    respond_to do |format|
      format.js { render layout: false }
    end
  end

  def edit
    @company = Company.where(id: params[:id], user_id: current_user.id)&.first
  end

  def update
    company = Company.where(id: params[:id], user_id: current_user.id)&.first
    company.assign_attributes(company_params)

    if company.valid? && company.save!
      redirect_to root_path, notice: 'Company was successfully updated.'
    else
      flash[:alert] = company.errors.full_messages.join(', ')
    end

    respond_to do |format|
      format.html
      format.js { render layout: false }
    end
  end

  def destroy
    company = Company.where(id: params[:id], user_id: current_user.id)&.first

    if company.destroy
      flash[:notice] = 'Company destroyed'
    else
      flash[:alert] = company.errors.full_messag  es.join('; ')
    end

    respond_to do |format|
      format.js { render layout: false }
    end
  end

  private

  def all_companies
    @all_companies = Company.where(user: current_user)
  end

  def company_params
    params.require(:company).permit :id, :user_id, :name, :country, :currency
  end
end
