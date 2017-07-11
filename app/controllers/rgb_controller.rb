class RgbController < ApplicationController
    def index
        session[:gold] ||= 0
        @gold = session[:gold]
        session[:activities] ||= ""
        @activities = session[:activities]
        render "index"
    end
    def farm
        flip = rand(10..20)
        session[:gold] += flip 
        session[:activities] +=  "Earned #{flip} golds from the farm! (#{Time.current.strftime('%Y/%m/%d %l:%M %P')})"
        redirect_to "/"
    end
    def cave
        flip = rand(5..10)
        session[:gold] += flip 
        session[:activities] += "Earned #{flip} golds from the cave! (#{Time.current.strftime('%Y/%m/%d %l:%M %P')})\n"
        redirect_to "/"
    end 
    def house 
        flip = rand(2..5)
        session[:gold] += flip 
        session[:activities] += "Earned #{flip} golds from the house! (#{Time.current.strftime('%Y/%m/%d %l:%M %P')})\n"
        redirect_to "/"  
    end 
    def casino
        flip = rand(-50..50)
        session[:gold] += flip 
        if flip <= 0
            session[:activities] += "Earned #{flip} golds from the casino! (#{Time.current.strftime('%Y/%m/%d %l:%M %P')})\n"
        else
            session[:activities] += "Lost #{flip} golds from the casino! (#{Time.current.strftime('%Y/%m/%d %l:%M %P')})\n" 
        end       
        redirect_to "/"
    end                 
end
