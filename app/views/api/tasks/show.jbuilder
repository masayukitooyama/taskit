json.status "success"
json.data do
  json.tasks @tasks do |task|
    json.extract! task,
      :id,
      :category_id,
      :title,
      :content,
      :end_time
  end
end
