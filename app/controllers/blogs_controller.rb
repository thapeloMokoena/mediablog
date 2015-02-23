class BlogsController < ApplicationController
  def new
    
    @url = params[:url]
    @blog_name = params[:blogname]
    @cont = params[:blogcont]
    
    if @url
      session[:name] = @url
      
    else
      session[:name] = "i dont know"
    end
    
    if params[:sb]
      if @url && @blog_name 
      
      @reg = Blog.new
      
      @reg.url = @url
      @reg.title = @blog_name
      @reg.content = @cont
      
           if  @reg.save
    
            flash['notice'] = "successfully registered!!"
          
            else
              flash['error'] = "failed to register, please try again"
            end
         end
         
      else
        flash['error'] = "url and blog name can't be empty!!"
        
      end
      
    end
      
 

  def destroy
  end
end
