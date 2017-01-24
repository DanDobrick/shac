class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy, :info]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
    @students.as_json
  end

  def info
    
  end

  # GET /students/1
  # GET /students/1.json
  def show
    if current_user.id != @student.id
      redirect_to student_path(current_user.id)
    else
      @crashes = Crash.where(crasher_id: current_user.id)
      @requested_crashes = Crash.where(crasher_id: current_user.id, accepted: false)
      @hostings = Crash.where(host_id: current_user.id, accepted: true)
      @pending_hostings = Crash.where(host_id: current_user.id, accepted: false)
      @potential_crashes = Student.where(hosting_zip: @student.zip, is_host: true, crashable: true)
      if @student.is_host
        @unrated_crashes = @student.unreviewed_crashes
      end
    end
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:first_name, :last_name, :devise_id, :is_crasher, :is_host, :school, :crashable, :zip, :crashable_type)
    end
end
