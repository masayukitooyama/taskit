class Task
  onStart: () ->
    @setTasks()

  setTasts: (callback) ->
    $(".sort_panel").Ajax("getTasks", {
      success: (json, textStatus, xhr) ->
        $(".task_list").append
      })
