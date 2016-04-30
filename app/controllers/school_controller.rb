class SchoolController < ApplicationController


  def index
  	@schoolnames = School.uniq.pluck("name")
  end

  def get_majors
  	@majors = School.where(:name => params[:currentschool]).uniq.pluck("major")
    if(@majors.blank?)
      @majors = School.uniq.pluck("major")
    end
  	respond_to do |format|
  		format.json { render json: @majors }
		end
  end

  def get_details
  	@currentschoolmajor = School.where(:name => params[:currentschool], :major => params[:currentmajor])
  	@ranking = Ranking.where(:name => params[:currentschool])
    @national_major = NationalAverage.where(:major => params[:currentmajor])
    @currentschool = School.where(:name => params[:currentschool])
    @currentmajor = School.where(:major => params[:currentmajor])
  	ret = {}
    ret[:ranking] = @ranking

    if(@currentschoolmajor.blank?)
      ret[:currentschool] = @currentschool
      ret[:currentmajor] = @currentmajor
      ret[:national_major] = @national_major
    	respond_to do |format|
  			format.json { render json: ret.to_json }
    	end

    else
      ret[:currentschoolmajor] = @currentschoolmajor
      respond_to do |format|
        format.json { render json: ret.to_json }
      end
     
    end

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
