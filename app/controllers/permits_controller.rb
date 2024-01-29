class PermitsController < ApplicationController
  before_action :set_permit, only: %i[ show edit update destroy ]

  # GET /permits or /permits.json
  def index
    @permits = Permit.all
  end

  # GET /permits/1 or /permits/1.json
  def show
  end

  # GET /permits/new
  def new
    @permit = Permit.new
  end

  # GET /permits/1/edit
  def edit
  end

  # POST /permits or /permits.json
  def create
    @permit = Permit.new(permit_params)

    respond_to do |format|
      if @permit.save
        format.html { redirect_to permit_url(@permit), notice: "Permit was successfully created." }
        format.json { render :show, status: :created, location: @permit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @permit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /permits/1 or /permits/1.json
  def update
    respond_to do |format|
      if @permit.update(permit_params)
        format.html { redirect_to permit_url(@permit), notice: "Permit was successfully updated." }
        format.json { render :show, status: :ok, location: @permit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @permit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /permits/1 or /permits/1.json
  def destroy
    @permit.destroy!

    respond_to do |format|
      format.html { redirect_to permits_url, notice: "Permit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_permit
      @permit = Permit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def permit_params
      params.require(:permit).permit(:title, :cost)
    end
end
