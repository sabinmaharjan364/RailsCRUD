class ClientsController < ApplicationController
    def index
        @clients=Client.all();
    end

    def show
        @client=Client.find params[:id]
    end
  
    def edit
        @client = Client.find params[:id]

    end
    def update
        @client = Client.find params[:id]
       
        # binding.pry
        if(@client.update client_params)
            redirect_to action: :show
        else
            render :edit
        end
    end
    def new
    @client=Client.new
    end
    def create
        @client = Client.new client_params
        # redirect_to @client
        if @client
            redirect_to @client
        else
            render :new
        end
        # if success
        # redirect show
        # else render new
    end
    def destroy
        @client = Client.find params[:id]
        @client.delete
        redirect_to action: :index
    end

    private 

    def client_params 
        params.require(:client).permit(:name, :age, :address)
    end

end
