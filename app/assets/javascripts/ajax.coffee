Ajax = class Ajax

  _request = (args)->
    $.ajax({
      type: args.type
      url: args.url
      dataType: "json"
      data: args.data
      success: (json, textStatus, xhr) ->
        args.success(json, textStatus, xhr)

      error: (err, json) ->
        args.error(err.responseJSON, err.status)
    })

  _get = (args) ->
    args.type = "GET"
    _request(args)

  _post = (args) ->
    args.type = "POST"
    _request(args)

  _put = (args) ->
    args.type = "PUT"
    _request(args)

  _delete = (args) ->
    args.type = "DELETE"
    _request(args)

  @getTasks: (args) ->
    args.url = "/api/tasks"
    _get(args)
