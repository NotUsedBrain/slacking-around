class EmployerProfilesController < ApplicationController
  before_action :set_employer_profile, only: [:show, :edit, :update, :destroy]

  def index
  end

  # GET /employer_profiles/1
  # GET /employer_profiles/1.json
  def show
  end

  # GET /employer_profiles/new
  def new
    @employer_profile = current_employer.build_employer_profile
  end

  # GET /employer_profiles/1/edit
  def edit
  end

  # POST /employer_profiles
  # POST /employer_profiles.json
  def create
    @employer_profile = current_employer.build_employer_profile(employer_profile_params)

    respond_to do |format|
      if @employer_profile.save
        format.html { redirect_to @employer_profile, notice: 'Employer profile was successfully created.' }
        format.json { render :show, status: :created, location: @employer_profile }
      else
        format.html { render :new }
        format.json { render json: @employer_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employer_profiles/1
  # PATCH/PUT /employer_profiles/1.json
  def update
    respond_to do |format|
      if @employer_profile.update(employer_profile_params)
        format.html { redirect_to @employer_profile, notice: 'Employer profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @employer_profile }
      else
        format.html { render :edit }
        format.json { render json: @employer_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employer_profiles/1
  # DELETE /employer_profiles/1.json
  def destroy
    @employer_profile.destroy
    respond_to do |format|
      format.html { redirect_to employer_profiles_url, notice: 'Employer profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employer_profile
      @employer_profile = EmployerProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employer_profile_params
      params.require(:employer_profile).permit(:first_name, :last_name, :business_name, :avatar)
    end
end
