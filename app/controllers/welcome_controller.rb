class WelcomeController < ApplicationController
    def index
    end

    def about
    end

    def readbooks
        render 'readbooks', layout: false
    end
end
