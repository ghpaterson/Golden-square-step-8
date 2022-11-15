class TodoList
    def initialize
        @list_of_things_todo = []
        
    end
  
    def add(todo) # todo is an instance of Todo
        @list_of_things_todo << todo
    end
  
    def incomplete
      return @list_of_things_todo.reject do |task|
        task.done?
      end
    end
  
    def complete
      @list_of_things_todo.select do |task|
        task.done?
      end
    end
  
    def give_up!
      @list_of_things_todo.each do |task|
        task.mark_done!
      end
    end
  end