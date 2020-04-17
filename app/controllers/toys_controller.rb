class ToysController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :setup_data

    #Show all toys
    def index
        
    end

    #Show a single toy 
    def show 
        puts params["name"]
        @selected_toy = Toy.find_by_name(params["name"])
    end

    #Create a new toy
    def create 
        name = params["name"]
        description = params["description"]
        date_posted = params["date_posted"]
        user = params["user"]
        Toy.create(name: name, description: description, date_posted: date_posted, user: user)
        # is this necessary or the correct way to do it?
        render json: 
    end

    #Update a toy
    def update 

    end

    #Remove a toy
    def destroy 

    end

    private 
    def setup_data
        @toys = Toy.all
    end

end