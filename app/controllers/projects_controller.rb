class ProjectsController < ApplicationController
    before_action :set_project, only: [:show, :edit, :update, :destroy]

    def index
        @projects = !request.authorization.nil? ? Project.order('id DESC') : Project.published.order('id DESC')
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

        if @project.save
            redirect_to @project, notice: 'Project was successfully created.'
        else
            render :new
        end
    end

    def update
        if @project.update(project_params)
            redirect_to @project, notice: 'Project was successfully updated.'
        else
            render :edit
        end
    end

    def destroy
        @project.destroy
        redirect_to projects_path, notice: 'Project was successfully destroyed.'
    end

    private

    def set_project
        @project = Project.find(params[:id])
    end

    def project_params
        params.require(:project).permit(:title, :content, :description, :image, :slug, :category_id, :location, :published_on, :draft)
    end
end
