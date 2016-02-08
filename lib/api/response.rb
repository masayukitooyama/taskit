module Api::Response
  def success (data)
    render json: {
      status: "success",
      data:   data
    }, status: 200
  end

  def error (data)
    render json: {
      status: "error",
      data: data
    }, status: status
  end
end
