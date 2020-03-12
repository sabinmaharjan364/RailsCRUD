class ApplicationController < ActionController::Base
    def hello_world
        puts "test put";
        render html: "hello world"
    end
end
