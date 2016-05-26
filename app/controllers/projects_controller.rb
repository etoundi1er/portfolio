class ProjectsController < ApplicationController
    before_action :find_project, only: [:show, :edit, :update, :destroy]
    
    def index
        @projects = Project.order("id DESC").all
    end
    
    def show
    end
    
    def new
        @project = Project.new
    end
    
    def edit
    end
    
    def create
        @project = Project.new(project_params)
        
        respond_to do |format|
          if @project.save
            format.html { redirect_to @project, notice: 'Project was successfully created.' }
          else
            format.html { render :new }
          end
        end
    end
    
    def update
        respond_to do |format|
            if @project.update(project_params)
                format.html { redirect_to @project, notice: 'Project was successfully updated.' }
            else
                format.html { render :edit }
            end
        end
    end

  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_path, notice: 'Project was successfully destroyed.' }
    end
  end
     
    
    private
        def find_project
            # @project = Project.find(params[:id])  
            @project = Project.find_by_slug(params[:id])
        end
        def project_params
            params.require(:project).permit(:title, :content, :description, :image, :slug, :category, :period)
        end
end
