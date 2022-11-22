class Diary
  def initialize(date, contents, phonenumber)
    @date = date
    @contents = contents
    @phonenumber = phonenumber
  end

  def read
    return @contents
  end

  def read_me(wpm, minutes)
    words_to_read = @contents.split(" ").length
    time = wpm * minutes
    return (words_to_read / time).ceil
  end

  def get_phone_number
    return "#{@date} : #{@phonenumber}"
  end
end

class MyPlanner 

    def initialize
        @items = []
    end 

    def organise (things)
        @items.push(things.text)
    end 
end


def add(todo)
    @items.push(todo.text)
  end



peter = Diary.new("10th March", "today we discussed dogs five six seven eight nine ten", 1234894)

plan = MyPlanner.new
p plan.add

# p peter.get_phone_number
# p peter.read_me(1, 1)