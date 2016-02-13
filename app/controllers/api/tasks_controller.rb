class Api::TasksController <ApplicationController

  def index
    binding.pry
    @tasks = Task.all()
  end
end
