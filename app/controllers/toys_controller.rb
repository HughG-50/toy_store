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
        # Just a return value for REST actions so we know something has happened?
        new_toy = {"name" => name, "description" => description, "date_posted" => date_posted, "user" => user}
        render json: new_toy
    end

    #Update a toy
    def update 
        puts params["name"]
        name = params["name"]
        description = params["description"]
        date_posted = params["date_posted"]
        user = params["user"]
        toy_to_update = Toy.find_by_name(name)
        toy_to_update.description = description
        toy_to_update.date_posted = date_posted
        toy_to_update.user = user
        toy_to_update.save
        
        render json: toy_to_update
    end

    #Remove a toy
    def destroy 
        puts params["name"]
        name = params["name"]
        toy_to_delete = Toy.find_by_name(name)
        toy_to_delete.destroy

        render json: toy_to_delete
    end

    private 
    def setup_data
        @toys = Toy.all
    end

end