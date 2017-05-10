class HomeController < ApplicationController
  def index 
     @food = [["carrot","apple","banana"],[100,200,300]]
     @breakfast = 0
     @lunch = 0
     @dinner = 0
     @random = rand(0..2)
     @breakfast_list = []
     @lunch_list = []
     @dinner_list = []
     @cnt = 0
     @total = 0
     while true
        @random = rand(0..2)
        if @breakfast <= 800 and @food[1][@random] + @breakfast <=800 and @cnt <= 2
            @breakfast += @food[1][@random]
            @breakfast_list.push(@food[0][@random])
            @cnt += 1
        else
            @cnt = 0
            break
        end
     end
     while true
        @random = rand(0..2)
        if @lunch <= 800 and @food[1][@random] + @lunch <=800 and @cnt <= 2
            @lunch += @food[1][@random]
            @lunch_list.push(@food[0][@random])
            @cnt += 1
        else
            @cnt = 0
            break
        end
     end
     while true
        @random = rand(0..2)
        if @dinner <= 800 and @food[1][@random] + @dinner <=800 and @cnt <= 2
            @dinner += @food[1][@random]
            @dinner_list.push(@food[0][@random])
            @cnt += 1 
        else
            break
        end
     end
     @total = @breakfast + @lunch + @dinner
  end
end