class UniversitystateController < ApplicationController


  def index
  	@schoolnames = School.uniq.pluck("name")
  end

  def get_universitystate
    @currentstate = UniversityState.where(:university_name => params[:currentschool])
    
    ret ={}
    ret[:currentstate] = @currentstate
    render json: @currentstate, status: 200

  end

  def get_result
  	@currentschoolmajor = School.where(:name => params[:currentschool], :major => params[:currentmajor])
  	@currentmajor = NationalAverage.where(:major => params[:currentmajor])
  	@currentschool = School.where(:name => params[:currentschool])
  	ret = {}
  	ret[:currentmajor] = @currentmajor
  	ret[:currentschool] = @currentschool
  	if(@currentschoolmajor.blank?)
			respond_to do |format|
			  format.json { render json: ret.to_json }
  		end
  	else
  		respond_to do |format|
			  format.json { render json: @currentschoolmajor }
			end
		end
  end
end
