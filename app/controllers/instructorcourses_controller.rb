class InstructorcoursesController < ApplicationController
  # GET /instructorcourses
  # GET /instructorcourses.json
  def index
    @instructorcourses = Instructorcourse.all
@who=session[:who]
if @who!=-1
	if @who==1
		@s=Instructor1.find(session[:user_id])
		@iddarray=Instructor1.where(email: @s.email)
		@idd=@iddarray[0].id.to_s
	end
	if @who==2
		@s=Student.find(session[:user_id])
		@iddarray=Student.where(email: @s.email)
		@idd=@iddarray[0].id.to_s
	end
end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @instructorcourses }
    end
  end

  # GET /instructorcourses/1
  # GET /instructorcourses/1.json
  def show
    @instructorcourse = Instructorcourse.find(params[:id])
	@s=Instructor1.find(session[:user_id])
	@iddarray=Instructor1.where(email: @s.email)
	@idd=@iddarray[0].id.to_s
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @instructorcourse }
    end
  end

  # GET /instructorcourses/new
  # GET /instructorcourses/new.json
  def new
    @instructorcourse = Instructorcourse.new
	@s=Instructor1.find(session[:user_id])
	#@instructorcourse.email=@s.email
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @instructorcourse }
    end
  end

  # GET /instructorcourses/1/edit
  def edit
    @instructorcourse = Instructorcourse.find(params[:id])
  end

  # POST /instructorcourses
  # POST /instructorcourses.json
  def create
    @instructorcourse = Instructorcourse.new(params[:instructorcourse])

    respond_to do |format|
      if @instructorcourse.save
        format.html { redirect_to @instructorcourse, notice: 'Instructorcourse was successfully created.' }
        format.json { render json: @instructorcourse, status: :created, location: @instructorcourse }
      else
        format.html { render action: "new" }
        format.json { render json: @instructorcourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /instructorcourses/1
  # PUT /instructorcourses/1.json
  def update
    @instructorcourse = Instructorcourse.find(params[:id])

    respond_to do |format|
      if @instructorcourse.update_attributes(params[:instructorcourse])
        format.html { redirect_to @instructorcourse, notice: 'Instructorcourse was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @instructorcourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instructorcourses/1
  # DELETE /instructorcourses/1.json
  def destroy
    @instructorcourse = Instructorcourse.find(params[:id])
    @instructorcourse.destroy

    respond_to do |format|
      format.html { redirect_to instructorcourses_url }
      format.json { head :no_content }
    end
  end
end
