class SignupsController < ApplicationController

    def index

    end

    def show

    end

    def new
        @signup = Signup.new
    end

    def create
        signup = Signup.create(signup_params(:camper_id, :activity_id, :time))
        if signup.valid?
        redirect_to camper_path(signup.camper)
        else
            flash[:messages] = signup.errors.full_messages
            redirect_to new_signup_path
        end
    end

    def edit

    end

    def update

    end

    private

    def signup_params(*args)
        params.require(:signup).permit(*args)
    end
end
