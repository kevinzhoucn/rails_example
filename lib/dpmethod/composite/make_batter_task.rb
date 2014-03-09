module Dpmethod::Composite
  class CompositeTask < Task
    def initialize(name)
      super(name)
      @sub_tasks = []
    end

    def add_sub_task(task)
      @sub_tasks << task
    end

    def remove_sub_task(task)
      @sub_tasks.delete(task)
    end

    def get_time_required
      time = 0.0
      @sub_tasks.each {|task| time += task.get_time_required}
      time
    end
  end

  class MakeCakeTask < CompositeTask
    def initialize
      super('Make cake')
      @sub_tasks = []
      add_sub_task(AddDryIngredientsTask.new)
      add_sub_task(MixTask.new)
    end
  end

  class MakeBatterTask < CompositeTask
    def initialize
      super('Make batter')
      @sub_tasks = []
      add_sub_task(MakeCakeTask.new)
      add_sub_task(AddDryIngredientsTask.new)
      add_sub_task(MixTask.new)
    end
  end

end