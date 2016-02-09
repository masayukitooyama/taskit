json.status "success"
json.data do
  json.categories @categories do |category|
    json.extract! category,
      :id,
      :name
    json.tasks category.tasks do |task|
      json.extract! task,
      :id,
      :category_id,
      :title,
      :content,
      :end_time
    end
  end
end
